class: CommandLineTool
id: affiliation_filters.py.cwl
inputs:
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_taxonomic_ranks
  doc: "The ordered ranks levels used in the metadata\ntaxonomy. [Default: ['Domain',\
    \ 'Phylum', 'Class',\n'Order', 'Family', 'Genus', 'Species']]"
  type: string[]
  inputBinding:
    prefix: --taxonomic-ranks
- id: in_mask
  doc: "If affiliations do not respect one of the filter they\nare replaced by NA\
    \ (mutually exclusive with --delete)"
  type: boolean?
  inputBinding:
    prefix: --mask
- id: in_delete
  doc: "If affiliations do not respect one of the filter the\nentire OTU is deleted.(mutually\
    \ exclusive with --mask)"
  type: boolean?
  inputBinding:
    prefix: --delete
- id: in_ignore_blast_tax_a
  doc: "[IGNORE_BLAST_TAXA [IGNORE_BLAST_TAXA ...]]\nTaxon list to maks/delete in\
    \ Blast affiliations"
  type: boolean?
  inputBinding:
    prefix: --ignore-blast-taxa
- id: in_minbootstrap__minrdpbootstrap
  doc: ":MIN_BOOTSTRAP, --min-rdp-bootstrap TAXONOMIC_LEVEL:MIN_BOOTSTRAP\nThe minimal\
    \ RDP bootstrap must be superior to this\nvalue (between 0 and 1)."
  type: long?
  inputBinding:
    prefix: -b
- id: in_min_blast_identity
  doc: "The number corresponding to the blast percentage\nidentity (between 0 and\
    \ 1)."
  type: long?
  inputBinding:
    prefix: --min-blast-identity
- id: in_min_blast_coverage
  doc: "The number corresponding to the blast percentage\ncoverage (between 0 and\
    \ 1)."
  type: long?
  inputBinding:
    prefix: --min-blast-coverage
- id: in_max_blast_evalue
  doc: "The number corresponding to the blast e value (between\n0 and 1)."
  type: long?
  inputBinding:
    prefix: --max-blast-evalue
- id: in_min_blast_length
  doc: The number corresponding to the blast length.
  type: long?
  inputBinding:
    prefix: --min-blast-length
- id: in_input_biom
  doc: The input biom file.
  type: File?
  inputBinding:
    prefix: --input-biom
- id: in_input_fast_a
  doc: The input fasta file.
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_output_biom
  doc: "The Biom file output. [Default: affiliation-\nfiltered.biom]"
  type: File?
  inputBinding:
    prefix: --output-biom
- id: in_output_fast_a
  doc: "The fasta output file. [Default: affiliation-\nfiltered.fasta]"
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_summary
  doc: "The HTML file containing the graphs. [Default:\nsummary.html]"
  type: File?
  inputBinding:
    prefix: --summary
- id: in_impacted
  doc: "The abundance file that summarizes all the clusters\nimpacted (deleted or\
    \ with affiliations masked).\n[Default: impacted_clusters.tsv]"
  type: File?
  inputBinding:
    prefix: --impacted
- id: in_impacted_multihit
  doc: "The multihit TSV file associated with impacted OTU.\n[Default: impacted_clusters_multihit.tsv]"
  type: File?
  inputBinding:
    prefix: --impacted-multihit
- id: in_log_file
  doc: The list of commands executed.
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_biom
  doc: "The Biom file output. [Default: affiliation-\nfiltered.biom]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_biom)
- id: out_output_fast_a
  doc: "The fasta output file. [Default: affiliation-\nfiltered.fasta]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.2--py37_0
cwlVersion: v1.1
baseCommand:
- affiliation_filters.py
