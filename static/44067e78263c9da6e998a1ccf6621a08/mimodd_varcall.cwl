class: CommandLineTool
id: mimodd_varcall.cwl
inputs:
- id: index_files
  doc: FILE [INDEX FILE ...] pre-computed index files for all input files
  type: string
  inputBinding:
    prefix: --index-files
- id: ofile
  doc: 'redirect the output (variant sites) to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
- id: group_by_id
  doc: optional flag to control handling of multi-sample input; if enabled, reads
    from different read groups are analyzed as separate samples even if the sample
    names associated with the read groups are identical; otherwise, the samtools default
    is used (reads are grouped based on the sample names of their read groups)
  type: boolean
  inputBinding:
    prefix: --group-by-id
- id: relaxed
  doc: turn off md5 checksum comparison between sequences in the reference genome
    and those specified in the BAM input file header(s)
  type: boolean
  inputBinding:
    prefix: --relaxed
- id: max_depth
  doc: 'average sample depth cap applied to input with extraordinarily large numbers
    of samples sequenced at high coverage to limit memory usage (default: 250)'
  type: long
  inputBinding:
    prefix: --max-depth
- id: quiet
  doc: suppress original messages from samtools mpileup and bcftools call
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: verbose output independent of samtools/bcftools
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: the number of threads to use (overrides config setting)
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- varcall
