class: CommandLineTool
id: mimodd_varcall.cwl
inputs:
- id: in_index_files
  doc: "FILE [INDEX FILE ...]\npre-computed index files for all input files"
  type: File
  inputBinding:
    prefix: --index-files
- id: in_ofile
  doc: "redirect the output (variant sites) to the specified\nfile (default: stdout)"
  type: File
  inputBinding:
    prefix: --ofile
- id: in_group_by_id
  doc: "optional flag to control handling of multi-sample\ninput; if enabled, reads\
    \ from different read groups\nare analyzed as separate samples even if the sample\n\
    names associated with the read groups are identical;\notherwise, the samtools\
    \ default is used (reads are\ngrouped based on the sample names of their read\n\
    groups)"
  type: boolean
  inputBinding:
    prefix: --group-by-id
- id: in_relaxed
  doc: "turn off md5 checksum comparison between sequences in\nthe reference genome\
    \ and those specified in the BAM\ninput file header(s)"
  type: boolean
  inputBinding:
    prefix: --relaxed
- id: in_max_depth
  doc: "average sample depth cap applied to input with\nextraordinarily large numbers\
    \ of samples sequenced at\nhigh coverage to limit memory usage (default: 250)"
  type: long
  inputBinding:
    prefix: --max-depth
- id: in_quiet
  doc: "suppress original messages from samtools mpileup and\nbcftools call"
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose output independent of samtools/bcftools
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: "the number of threads to use (overrides config\nsetting)\n"
  type: long
  inputBinding:
    prefix: --threads
- id: in_reference_genome
  doc: the reference genome (in fasta format)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output (variant sites) to the specified\nfile (default: stdout)"
  type: File
  outputBinding:
    glob: $(inputs.in_ofile)
cwlVersion: v1.1
baseCommand:
- mimodd
- varcall
