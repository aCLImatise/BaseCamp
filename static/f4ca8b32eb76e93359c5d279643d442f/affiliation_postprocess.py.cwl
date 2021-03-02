class: CommandLineTool
id: affiliation_postprocess.py.cwl
inputs:
- id: in_identity
  doc: "Min percentage identity to agggregate OTU. [Default:\n99.0]"
  type: long?
  inputBinding:
    prefix: --identity
- id: in_coverage
  doc: "Min percentage coverage to agggregate OTU. [Default:\n99.0]"
  type: long?
  inputBinding:
    prefix: --coverage
- id: in_taxon_list_ignore
  doc: "[TAXON_IGNORED [TAXON_IGNORED ...]], --taxon-ignored [TAXON_IGNORED [TAXON_IGNORED\
    \ ...]]\nTaxon list to ignore when OTUs agggregation"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_input_biom
  doc: "Abundance table with affiliations metadata from the\naffiliation_OTU program\
    \ (format: BIOM)."
  type: string?
  inputBinding:
    prefix: --input-biom
- id: in_input_fast_a
  doc: 'OTU seed sequence file (format: FASTA).'
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_reference
  doc: "amplicon reference file, to resolve inclusive amplicon\naffiliations (format:\
    \ FASTA)"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_output_biom
  doc: "BIOM file whith refind affiliation annotations.\n(format: BIOM) [Default:\n\
    affiliation_postprocess_abundance.biom]"
  type: File?
  inputBinding:
    prefix: --output-biom
- id: in_output_compo
  doc: "Aggregated OTU composition (format: TSV) [Default:\naffiliation_postprocess_otu_composition.tsv]"
  type: string?
  inputBinding:
    prefix: --output-compo
- id: in_output_fast_a
  doc: "Updated OTU FASTA file (format: FASTA) [Default:\naffiliation_postprocess_OTU.fasta]"
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_log_file
  doc: The list of commands executed.
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.0--py37_0
cwlVersion: v1.1
baseCommand:
- affiliation_postprocess.py
