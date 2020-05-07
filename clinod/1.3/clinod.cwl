class: CommandLineTool
id: clinod.cwl
inputs:
- id: bm
  doc: "- optional, an absolute path to the Batchman \r executable. By default this\
    \ path is searched in \r the environmental variable called BATCHMAN_PATH. \r If\
    \ it is not found there, then clinod attempts \r to locate the batchman executable\
    \ in the same \r directory as the clinod jar file. In order to be \r found there\
    \ the batchman executable must be \r called the \"batchman.exe\" on Windows systems\
    \ and \r the \"batchman\" on all other operating systems.\r If neither of those\
    \ paths are valid then the \r execution fails.  \r If several paths are valid\
    \ then clinod uses them\r in the following order:  \r 1) Path from the command\
    \ line parameter\r 2) Path from the environmental variable\r 3) Local directory\
    \ path \r"
  type: string
  inputBinding:
    prefix: -bm
- id: non_ols
  doc: "- optional, suppresses reporting of the proteins \r with no NOLS detected\
    \ if specified. \r"
  type: boolean
  inputBinding:
    prefix: -nonols
- id: clean_sequence
  doc: "- optional, if specified causes the predictor to \r automatically remove all\
    \ non-protein characters \r from the sequences that contains them.\r The predictor\
    \ only works with unambiguous \r protein sequences. Only the following characters\r\
    \ considered to be valid: ARNDCQEGHILKMFPSTWYV. \r If any other character is detected\
    \ in the \r sequence the predictor stops the execution and \r raises the exception\
    \ unless this flag is \r specified. In this case, the predictor removes \r invalid\
    \ characters from the sequence and writes\r the information about it into the\
    \ log file. \r"
  type: boolean
  inputBinding:
    prefix: -clean_sequence
outputs: []
cwlVersion: v1.1
baseCommand:
- clinod
