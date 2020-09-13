class: CommandLineTool
id: ../../../rsem_run_ebseq.cwl
inputs:
- id: in_ng_vector
  doc: "This option provides the grouping information required by EBSeq for\nisoform-level\
    \ differential expression analysis. The file can be\ngenerated by 'rsem-generate-ngvector'.\
    \ Turning this option on is\nhighly recommended for isoform-level differential\
    \ expression\nanalysis. (Default: off)"
  type: File
  inputBinding:
    prefix: --ngvector
- id: in_h_slash_help
  doc: Show help information.
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_analysis_dot
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_data_matrix_file
  doc: "This file is a m by n matrix. m is the number of genes/transcripts\nand n\
    \ is the number of total samples. Each element in the matrix\nrepresents the expected\
    \ count for a particular gene/transcript in a\nparticular sample. Users can use\
    \ 'rsem-generate-data-matrix' to\ngenerate this file from expression result files."
  type: string
  inputBinding:
    position: 0
- id: in_conditions
  doc: "Comma-separated list of values representing the number of replicates\nfor\
    \ each condition. For example, \"3,3\" means the data set contains 2\nconditions\
    \ and each condition has 3 replicates. \"2,3,3\" means the\ndata set contains\
    \ 3 conditions, with 2, 3, and 3 replicates for each\ncondition respectively."
  type: string
  inputBinding:
    position: 1
- id: in_output_file_dot_normalized_data_matrix
  doc: This file contains the median normalized version of the input data
  type: string
  inputBinding:
    position: 1
- id: in_outputfilepattern
  doc: output_file.pattern
  type: string
  inputBinding:
    position: 2
- id: in_output_file_dot_cond_means
  doc: "This file is only generated when there are more than 2 conditions.\nIt gives\
    \ the normalized mean count value for each gene/transcript at\neach condition.\
    \ It is formatted as a matrix with names. Each row\nrepresents a gene/transcript\
    \ and each column represent a condition.\nThe order of genes/transcripts is the\
    \ same as 'output_file'. This\nfile can be used to calculate fold changes between\
    \ conditions which\nusers are interested in."
  type: string
  inputBinding:
    position: 0
- id: in_interested_genelevel_analysis
  doc: 2) We're interested in gene-level analysis and there are 3 conditions.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-run-ebseq
