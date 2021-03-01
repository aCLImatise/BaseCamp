class: CommandLineTool
id: alfred_qc.cwl
inputs:
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg   reference fasta file (required)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_bed_file
  doc: '[ --bed ] arg         bed file with target regions (optional)'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_sample_name
  doc: '[ --name ] arg        sample name (optional, otherwise SM tag is used)'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_gzipped_file
  doc: '[ --jsonout ] arg     gzipped json output file'
  type: File?
  inputBinding:
    prefix: -j
- id: in_arg_gzipped_tsv
  doc: '[ --outfile ] arg     gzipped tsv output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_evaluate_secondary_alignments
  doc: '[ --secondary ]       evaluate secondary alignments'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_evaluate_supplementary_alignments
  doc: '[ --supplementary ]   evaluate supplementary alignments'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_only_analyze
  doc: '[ --rg ] arg          only analyze this read group (optional)'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in__ignore_readgroups
  doc: '[ --ignore ]          ignore read-groups'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_aligned_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_gzipped_file
  doc: '[ --jsonout ] arg     gzipped json output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_gzipped_file)
- id: out_arg_gzipped_tsv
  doc: '[ --outfile ] arg     gzipped tsv output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_gzipped_tsv)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/alfred:0.2.3--hf3ca161_0
cwlVersion: v1.1
baseCommand:
- alfred
- qc
