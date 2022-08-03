FROM ubuntu:22.10

WORKDIR TP_final

ADD ["texto.txt", "/TP_final"]
ADD ["menu.sh", "/TP_final"]
ADD ["statsWords.sh", "/TP_final"]
ADD ["statsUsageWords.sh", "/TP_final"]
ADD ["findNames.sh", "/TP_final"]
ADD ["statsSentences.sh", "/TP_final"]
ADD ["blankLinesCounter.sh", "/TP_final"]
ADD ["caseConverter.sh", "/TP_final"]
ADD ["substringReplace.sh", "/TP_final"]
ADD ["blockSelection.sh", "/TP_final"]
ADD ["palindromeDetection.sh", "/TP_final"]

ENTRYPOINT ["bash", "menu.sh"]
