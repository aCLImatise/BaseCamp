class: CommandLineTool
id: whatshap_stats.cwl
inputs:
- id: in_gtf
  doc: Write phased blocks to GTF file.
  type: File
  inputBinding:
    prefix: --gtf
- id: in_sample
  doc: "Name of the sample to process. If not given, use first\nsample found in VCF."
  type: string
  inputBinding:
    prefix: --sample
- id: in_chr_lengths
  doc: "File with chromosome lengths (one line per chromosome,\ntab separated '<chr>\
    \ <length>') needed to compute N50\nvalues."
  type: long
  inputBinding:
    prefix: --chr-lengths
- id: in_tsv
  doc: Filename to write statistics to (tab-separated).
  type: File
  inputBinding:
    prefix: --tsv
- id: in_only_sn_vs
  doc: Only process SNVs and ignore all other variants.
  type: boolean
  inputBinding:
    prefix: --only-snvs
- id: in_block_list
  doc: "Filename to write list of all blocks to (one block per\nline)."
  type: File
  inputBinding:
    prefix: --block-list
- id: in_chromosome
  doc: "Name of chromosome to process. If not given, all\nchromosomes in the input\
    \ VCF are considered.\n"
  type: string
  inputBinding:
    prefix: --chromosome
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- whatshap
- stats
