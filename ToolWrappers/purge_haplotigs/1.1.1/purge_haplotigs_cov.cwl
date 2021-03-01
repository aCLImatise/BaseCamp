class: CommandLineTool
id: purge_haplotigs_cov.cwl
inputs:
- id: in_in
  doc: The bedtools genomecov output that was produced from 'purge_haplotigs readhist'
  type: boolean?
  inputBinding:
    prefix: -in
- id: in_low
  doc: The read depth low cutoff (use the histogram to eyeball these cutoffs)
  type: boolean?
  inputBinding:
    prefix: -low
- id: in_mid
  doc: The low point between the haploid and diploid peaks
  type: boolean?
  inputBinding:
    prefix: -mid
- id: in_out
  doc: Choose an output file name (CSV format, DEFAULT = coverage_stats.csv)
  type: File?
  inputBinding:
    prefix: -out
- id: in_junk
  doc: "Auto-assign contig as \"j\" (junk) if this percentage or greater of the contig\
    \ is\nlow/high coverage (DEFAULT = 80, > 100 = don't junk anything)"
  type: boolean?
  inputBinding:
    prefix: -junk
- id: in_suspect
  doc: "Auto-assign contig as \"s\" (suspected haplotig) if this percentage or less\
    \ of the\ncontig is diploid level of coverage (DEFAULT = 80)\n"
  type: boolean?
  inputBinding:
    prefix: -suspect
- id: in_h
  doc: ''
  type: long?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Choose an output file name (CSV format, DEFAULT = coverage_stats.csv)
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- cov
