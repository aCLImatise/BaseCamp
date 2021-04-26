class: CommandLineTool
id: augur_sequence_traits.cwl
inputs:
- id: in_ancestral_sequences
  doc: "nucleotide alignment (VCF) to search for sequence\ntraits in (can be generated\
    \ from 'ancestral' using '--\noutput-vcf') (default: None)"
  type: string?
  inputBinding:
    prefix: --ancestral-sequences
- id: in_translations
  doc: "AA alignment to search for sequence traits in (can\ninclude ancestral sequences)\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --translations
- id: in_vcf_reference
  doc: "fasta file of the sequence the nucleotide VCF was\nmapped to (default: None)"
  type: File?
  inputBinding:
    prefix: --vcf-reference
- id: in_vcf_translate_reference
  doc: "fasta file of the sequence the translated VCF was\nmapped to (default: None)"
  type: File?
  inputBinding:
    prefix: --vcf-translate-reference
- id: in_features
  doc: "file that specifies sites defining the features in a\ntab-delimited format:\
    \ \"GENE SITE ALT DISPLAY_NAME\nFEATURE\". For nucleotide sites, GENE can be \"\
    nuc\" (or\ncolumn excluded entirely for all-nuc sites).\n\"DISPLAY_NAME\" can\
    \ be blank or excluded entirely.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --features
- id: in_count
  doc: "Whether to count traits (ex: # drugs resistant to) or\nmutations (default:\
    \ traits)"
  type: string?
  inputBinding:
    prefix: --count
- id: in_label
  doc: "How to label the counts (ex: Drug_Resistance)\n(default: # Traits)"
  type: string?
  inputBinding:
    prefix: --label
- id: in_output_node_data
  doc: "name of JSON file to save sequence features to\n(default: None)\n"
  type: File?
  inputBinding:
    prefix: --output-node-data
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:12.0.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- augur
- sequence-traits
