class: CommandLineTool
id: augur_translate.cwl
inputs:
- id: in_tree
  doc: "prebuilt Newick -- no tree will be built if provided\n(default: None)"
  type: string?
  inputBinding:
    prefix: --tree
- id: in_ancestral_sequences
  doc: "JSON (fasta input) or VCF (VCF input) containing\nancestral and tip sequences\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --ancestral-sequences
- id: in_reference_sequence
  doc: "GenBank or GFF file containing the annotation\n(default: None)"
  type: File?
  inputBinding:
    prefix: --reference-sequence
- id: in_genes
  doc: "genes to translate (list or file containing list)\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --genes
- id: in_output_node_data
  doc: "name of JSON file to save aa-mutations to (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --output-node-data
- id: in_alignment_output
  doc: "write out translated gene alignments. If a VCF-input,\na .vcf or .vcf.gz will\
    \ be output here (depending on\nfile ending). If fasta-input, specify the file\
    \ name\nlike so: 'my_alignment_%GENE.fasta', where '%GENE'\nwill be replaced by\
    \ the name of the gene (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --alignment-output
- id: in_vcf_reference_output
  doc: "fasta file where reference sequence translations for\nVCF input will be written\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --vcf-reference-output
- id: in_vcf_reference
  doc: "fasta file of the sequence the VCF was mapped to\n(default: None)\n"
  type: File?
  inputBinding:
    prefix: --vcf-reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.1.2--py_1
cwlVersion: v1.1
baseCommand:
- augur
- translate
