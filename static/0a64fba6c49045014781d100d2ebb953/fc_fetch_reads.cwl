class: CommandLineTool
id: fc_fetch_reads.cwl
inputs:
- id: base_dir
  doc: the base working dir of a falcon assembly
  type: string
  inputBinding:
    prefix: --base_dir
- id: fof_n
  doc: path to the file of the list of raw read fasta files
  type: string
  inputBinding:
    prefix: --fofn
- id: ctg_id
  doc: contig identifier in the contig fasta file
  type: string
  inputBinding:
    prefix: --ctg_id
- id: out_dir
  doc: the output base_dir, default to `base_dir/3-unzip/reads` directory
  type: string
  inputBinding:
    prefix: --out_dir
- id: min_ctg_lenth
  doc: the minimum length of the contig for the outputs, default=20000
  type: long
  inputBinding:
    prefix: --min_ctg_lenth
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_fetch_reads
