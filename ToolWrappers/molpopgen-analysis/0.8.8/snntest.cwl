class: CommandLineTool
id: snntest.cwl
inputs:
- id: in_data_fasta_format
  doc: ": data are in fasta format in a file called filename\nfurther options for\
    \ fasta data:\n-O outgroup : if there is an outgroup in the file, pass it the\
    \ number (1 <= outgroup <= n)"
  type: File
  inputBinding:
    prefix: -f
- id: in_data_format_used
  doc: ": data are in the format used for Hudson's (2001) programs"
  type: File
  inputBinding:
    prefix: -s
- id: in_read_mslike_data
  doc: ': read ms-like data from stdin'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_number_pops_followed
  doc: ': the number of pops followed by list of sample sizes per pop'
  type: string[]
  inputBinding:
    prefix: -c
- id: in_write_data_outfilename
  doc: ': write data to outfilename (defaults to writing to the screen)'
  type: File
  inputBinding:
    prefix: -o
- id: in_pvalues_nperms_permutations
  doc: ': get p-values from nperms permutations of the data (default=10000)'
  type: long
  inputBinding:
    prefix: -n
- id: in_only_analyze_biallelic
  doc: ': only analyze bi-allelic sites (only considers the ingroup!)'
  type: boolean
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_data_outfilename
  doc: ': write data to outfilename (defaults to writing to the screen)'
  type: File
  outputBinding:
    glob: $(inputs.in_write_data_outfilename)
cwlVersion: v1.1
baseCommand:
- snntest
