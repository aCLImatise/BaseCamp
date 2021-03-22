class: CommandLineTool
id: augur_ancestral.cwl
inputs:
- id: in_tree
  doc: 'prebuilt Newick (default: None)'
  type: string?
  inputBinding:
    prefix: --tree
- id: in_alignment
  doc: 'alignment in fasta or VCF format (default: None)'
  type: string?
  inputBinding:
    prefix: --alignment
- id: in_output_node_data
  doc: "name of JSON file to save mutations and ancestral\nsequences to (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --output-node-data
- id: in_output_sequences
  doc: "name of FASTA file to save ancestral sequences to\n(FASTA alignments only)\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --output-sequences
- id: in_inference
  doc: "calculate joint or marginal maximum likelihood\nancestral sequence states\
    \ (default: joint)"
  type: string?
  inputBinding:
    prefix: --inference
- id: in_vcf_reference
  doc: "fasta file of the sequence the VCF was mapped to\n(default: None)"
  type: File?
  inputBinding:
    prefix: --vcf-reference
- id: in_output_vcf
  doc: "name of output VCF file which will include ancestral\nseqs (default: None)"
  type: File?
  inputBinding:
    prefix: --output-vcf
- id: in_keep_ambiguous
  doc: "do not infer nucleotides at ambiguous (N) sites on tip\nsequences (leave as\
    \ N). (default: False)"
  type: boolean?
  inputBinding:
    prefix: --keep-ambiguous
- id: in_infer_ambiguous
  doc: "infer nucleotides at ambiguous (N,W,R,..) sites on tip\nsequences and replace\
    \ with most likely state.\n(default: True)"
  type: boolean?
  inputBinding:
    prefix: --infer-ambiguous
- id: in_keep_overhangs
  doc: "do not infer nucleotides for gaps (-) on either side\nof the alignment (default:\
    \ False)\n"
  type: boolean?
  inputBinding:
    prefix: --keep-overhangs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf
  doc: "name of output VCF file which will include ancestral\nseqs (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.2.0--py_0
cwlVersion: v1.1
baseCommand:
- augur
- ancestral
