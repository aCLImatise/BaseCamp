class: CommandLineTool
id: pxaa2cdn.cwl
inputs:
- id: in_aa_seq_f
  doc: input sequence file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --aaseqf
- id: in_nuc_seq_f
  doc: input sequence file, STDIN otherwise
  type: File?
  inputBinding:
    prefix: --nucseqf
- id: in_out_f
  doc: output fasta file, STOUT otherwise
  type: File?
  inputBinding:
    prefix: --outf
- id: in_rm_last_cdn
  doc: 'removes last codon (default: false)'
  type: boolean?
  inputBinding:
    prefix: --rmlastcdn
- id: in_citation
  doc: display phyx citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_f
  doc: output fasta file, STOUT otherwise
  type: File?
  outputBinding:
    glob: $(inputs.in_out_f)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyx:1.1--h937addc_0
cwlVersion: v1.1
baseCommand:
- pxaa2cdn
