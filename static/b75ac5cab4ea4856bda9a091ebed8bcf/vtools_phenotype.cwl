class: CommandLineTool
id: vtools_phenotype.cwl
inputs:
- id: f
  doc: "[INPUT_FILE [INPUT_FILE ...]], --from_file [INPUT_FILE [INPUT_FILE ...]],\
    \ --from-file [INPUT_FILE [INPUT_FILE ...]] Import phenotype from a tab or space\
    \ delimited file, which can be standard input if a name - is specified. Samples\
    \ are determined by sample names in the first column, or jointly by sample name\
    \ and filename if there is another column with header 'filename'. Names of phenotype\
    \ fields are determined by header of the input file, or by names provided from\
    \ option --header. Non-alphanumeric characters in input filed names will be replaced\
    \ by '_'. If multiple samples in a project share the same names, they will shared\
    \ the imported phenotypes. Optionally, a list of phenotypes (columns of the file)\
    \ can be specified after filename, in which case only the specified phenotypes\
    \ will be imported. Parameter --samples could be used to limit the samples for\
    \ which phenotypes are imported. Values that match value of parameter --na and\
    \ cannot be converted to the probed type of phenotype (e.g. '' in a column of\
    \ numbers) are recorded as missing values."
  type: boolean
  inputBinding:
    prefix: -f
- id: set
  doc: '[EXPRESSION [EXPRESSION ...]] Set a phenotype to a constant (e.g. --set aff=1),
    or an expression using other existing phenotypes (e.g. --set ratio_qt=high_qt/all_qt
    (the ratio of the number of high quality variants to the number of all variants,
    where high_qt and all_qt are obtained from sample statistics using parameter --from_stat).
    Parameter --samples could be used to limit the samples for which genotypes will
    be set.'
  type: boolean
  inputBinding:
    prefix: --set
- id: from_stat
  doc: "[EXPRESSION [EXPRESSION ...]], --from-stat [EXPRESSION [EXPRESSION ...]] Set\
    \ a phenotype to a summary statistics of a genotype field. For example, \"num=count(*)\"\
    \ sets phenotype num to be the number of genotypes of a sample, \"GD=avg(DP)\"\
    \ sets phenotype DP to be the average depth (if DP is one of the genotype fields)\
    \ of the sample. Multiple fields (e.g. '--from-stat \"num=count(*)\" \"GD=avg(DP)\"\
    ') are also allowed. In addition to standard SQL aggregation functions, variant\
    \ tools supports special functions #(GT), #(wtGT), #(mutGT), #(alt), #(hom), #(het)\
    \ and #(other), which counts the number of genotypes (the same as count(*)), wildtype\
    \ genotypes, mutant genotypes alternative alleles, homozygotes, heterozygotes,\
    \ and genotypes with two different alternative alleles. Parameters --genotypes\
    \ and --samples could be used to limit the genotypes to be considered and the\
    \ samples for which genotypes will be set."
  type: boolean
  inputBinding:
    prefix: --from_stat
- id: output
  doc: '[EXPRESSION [EXPRESSION ...]] A list of phenotype to be outputted. SQL-compatible
    expressions or functions such as "DP/DP_all" and "avg(DP)" are also allowed'
  type: boolean
  inputBinding:
    prefix: --output
- id: jobs
  doc: Allow at most N concurrent jobs to obtain sample statistics for parameter --from-stat.
  type: string
  inputBinding:
    prefix: --jobs
- id: g
  doc: "[COND [COND ...]], --genotypes [COND [COND ...]] Limit the operation to genotypes\
    \ that match specified conditions. Use 'vtools show genotypes' to list usable\
    \ fields for each sample."
  type: boolean
  inputBinding:
    prefix: -g
- id: s
  doc: "[COND [COND ...]], --samples [COND [COND ...]] Update phenotype for samples\
    \ that match specified conditions. Use 'vtools show samples' to list usable fields\
    \ in the sample table."
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
- id: header
  doc: '[HEADER [HEADER ...]] A list of header names for input file if used with option
    --from-file. Otherwise a complete header or a list of names that will be joined
    by a delimiter (parameter --delimiter), for option --output. If a special name
    - is specified, the header will be read from the standard input, which is the
    preferred way to specify large multi-line headers (e.g. cat myheader | vtools
    export --header -). If this parameter is given without parameter, a default header
    will be derived from field names.'
  type: boolean
  inputBinding:
    prefix: --header
- id: delimiter
  doc: Delimiter, default to tab, a popular alternative is ',' for csv output
  type: string
  inputBinding:
    prefix: --delimiter
- id: na
  doc: Input or output string for missing value..
  type: string
  inputBinding:
    prefix: --na
- id: limit
  doc: Number of record to display. Default to all record.
  type: string
  inputBinding:
    prefix: --limit
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- phenotype
