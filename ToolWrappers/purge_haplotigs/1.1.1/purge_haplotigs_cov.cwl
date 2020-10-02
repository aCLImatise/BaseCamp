class: CommandLineTool
id: purge_haplotigs_cov.cwl
inputs:
- id: in_bedtools_genomecov_output
  doc: / -in        The bedtools genomecov output that was produced from 'purge_haplotigs
    readhist'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_low_read_depth
  doc: / -low       The read depth low cutoff (use the histogram to eyeball these
    cutoffs)
  type: boolean
  inputBinding:
    prefix: -l
- id: in_mid_low_point
  doc: / -mid       The low point between the haploid and diploid peaks
  type: boolean
  inputBinding:
    prefix: -m
- id: in_choose_csv_format
  doc: / -out       Choose an output file name (CSV format, DEFAULT = coverage_stats.csv)
  type: File
  inputBinding:
    prefix: -o
- id: in_junk_autoassign_contig
  doc: "/ -junk      Auto-assign contig as \"j\" (junk) if this percentage or greater\
    \ of the contig is\nlow/high coverage (DEFAULT = 80, > 100 = don't junk anything)"
  type: boolean
  inputBinding:
    prefix: -j
- id: in_suspect_autoassign_contig
  doc: "/ -suspect   Auto-assign contig as \"s\" (suspected haplotig) if this percentage\
    \ or less of the\ncontig is diploid level of coverage (DEFAULT = 80)\n"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_h
  doc: ''
  type: long
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_choose_csv_format
  doc: / -out       Choose an output file name (CSV format, DEFAULT = coverage_stats.csv)
  type: File
  outputBinding:
    glob: $(inputs.in_choose_csv_format)
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- cov
