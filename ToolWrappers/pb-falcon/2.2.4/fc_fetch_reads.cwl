class: CommandLineTool
id: fc_fetch_reads.cwl
inputs:
- id: in_base_dir
  doc: the base working dir of a falcon assembly
  type: string?
  inputBinding:
    prefix: --base_dir
- id: in_fof_n
  doc: path to the file of the list of raw read fasta files
  type: File?
  inputBinding:
    prefix: --fofn
- id: in_ctg_id
  doc: contig identifier in the contig fasta file
  type: File?
  inputBinding:
    prefix: --ctg_id
- id: in_out_dir
  doc: "the output base_dir, default to\n`base_dir/3-unzip/reads` directory"
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_min_ctg_lenth
  doc: "the minimum length of the contig for the outputs,\ndefault=20000\n"
  type: long?
  inputBinding:
    prefix: --min_ctg_lenth
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "the output base_dir, default to\n`base_dir/3-unzip/reads` directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- fc_fetch_reads
