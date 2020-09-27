class: CommandLineTool
id: vtools_phenotype.cwl
inputs:
- id: in_import_phenotype_tab
  doc: "[INPUT_FILE [INPUT_FILE ...]], --from_file [INPUT_FILE [INPUT_FILE ...]],\
    \ --from-file [INPUT_FILE [INPUT_FILE ...]]\nImport phenotype from a tab or space\
    \ delimited file,\nwhich can be standard input if a name - is specified.\nSamples\
    \ are determined by sample names in the first\ncolumn, or jointly by sample name\
    \ and filename if\nthere is another column with header 'filename'. Names\nof phenotype\
    \ fields are determined by header of the\ninput file, or by names provided from\
    \ option --header.\nNon-alphanumeric characters in input filed names will\nbe\
    \ replaced by '_'. If multiple samples in a project\nshare the same names, they\
    \ will shared the imported\nphenotypes. Optionally, a list of phenotypes (columns\n\
    of the file) can be specified after filename, in which\ncase only the specified\
    \ phenotypes will be imported.\nParameter --samples could be used to limit the\
    \ samples\nfor which phenotypes are imported. Values that match\nvalue of parameter\
    \ --na and cannot be converted to the\nprobed type of phenotype (e.g. '' in a\
    \ column of\nnumbers) are recorded as missing values."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_set
  doc: "[EXPRESSION [EXPRESSION ...]]\nSet a phenotype to a constant (e.g. --set aff=1),\
    \ or\nan expression using other existing phenotypes (e.g.\n--set ratio_qt=high_qt/all_qt\
    \ (the ratio of the number\nof high quality variants to the number of all\nvariants,\
    \ where high_qt and all_qt are obtained from\nsample statistics using parameter\
    \ --from_stat).\nParameter --samples could be used to limit the samples\nfor which\
    \ genotypes will be set."
  type: boolean
  inputBinding:
    prefix: --set
- id: in_from_stat
  doc: "[EXPRESSION [EXPRESSION ...]], --from-stat [EXPRESSION [EXPRESSION ...]]\n\
    Set a phenotype to a summary statistics of a genotype\nfield. For example, \"\
    num=count(*)\" sets phenotype num\nto be the number of genotypes of a sample,\n\
    \"GD=avg(DP)\" sets phenotype DP to be the average depth\n(if DP is one of the\
    \ genotype fields) of the sample.\nMultiple fields (e.g. '--from-stat \"num=count(*)\"\
    \n\"GD=avg(DP)\"') are also allowed. In addition to\nstandard SQL aggregation\
    \ functions, variant tools\nsupports special functions #(GT), #(wtGT), #(mutGT),\n\
    #(alt), #(hom), #(het) and #(other), which counts the\nnumber of genotypes (the\
    \ same as count(*)), wildtype\ngenotypes, mutant genotypes alternative alleles,\n\
    homozygotes, heterozygotes, and genotypes with two\ndifferent alternative alleles.\
    \ Parameters --genotypes\nand --samples could be used to limit the genotypes to\n\
    be considered and the samples for which genotypes will\nbe set."
  type: boolean
  inputBinding:
    prefix: --from_stat
- id: in_output
  doc: "[EXPRESSION [EXPRESSION ...]]\nA list of phenotype to be outputted. SQL-compatible\n\
    expressions or functions such as \"DP/DP_all\" and\n\"avg(DP)\" are also allowed"
  type: boolean
  inputBinding:
    prefix: --output
- id: in_jobs
  doc: "Allow at most N concurrent jobs to obtain sample\nstatistics for parameter\
    \ --from-stat."
  type: string
  inputBinding:
    prefix: --jobs
- id: in_limit_operation_use
  doc: "[COND [COND ...]], --genotypes [COND [COND ...]]\nLimit the operation to genotypes\
    \ that match specified\nconditions. Use 'vtools show genotypes' to list usable\n\
    fields for each sample."
  type: boolean
  inputBinding:
    prefix: -g
- id: in_update_phenotype_samples
  doc: "[COND [COND ...]], --samples [COND [COND ...]]\nUpdate phenotype for samples\
    \ that match specified\nconditions. Use 'vtools show samples' to list usable\n\
    fields in the sample table."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1)."
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_header
  doc: "[HEADER [HEADER ...]]\nA list of header names for input file if used with\n\
    option --from-file. Otherwise a complete header or a\nlist of names that will\
    \ be joined by a delimiter\n(parameter --delimiter), for option --output. If a\n\
    special name - is specified, the header will be read\nfrom the standard input,\
    \ which is the preferred way to\nspecify large multi-line headers (e.g. cat myheader\
    \ |\nvtools export --header -). If this parameter is given\nwithout parameter,\
    \ a default header will be derived\nfrom field names."
  type: boolean
  inputBinding:
    prefix: --header
- id: in_delimiter
  doc: "Delimiter, default to tab, a popular alternative is\n',' for csv output"
  type: string
  inputBinding:
    prefix: --delimiter
- id: in_na
  doc: Input or output string for missing value..
  type: string
  inputBinding:
    prefix: --na
- id: in_limit
  doc: "Number of record to display. Default to all record.\n"
  type: long
  inputBinding:
    prefix: --limit
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools
- phenotype
