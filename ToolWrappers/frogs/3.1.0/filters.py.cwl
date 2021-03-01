class: CommandLineTool
id: filters.py.cwl
inputs:
- id: in_nb_cpus
  doc: 'The maximum number of CPUs used. [Default: 1]'
  type: long?
  inputBinding:
    prefix: --nb-cpus
- id: in_nb_biggest_otu
  doc: Number of most abundant OTUs you want to keep.
  type: long?
  inputBinding:
    prefix: --nb-biggest-otu
- id: in_min_sample_presence
  doc: Keep OTU present in at least this number of samples.
  type: long?
  inputBinding:
    prefix: --min-sample-presence
- id: in_min_abundance
  doc: "Minimum percentage/number of sequences, comparing to\nthe total number of\
    \ sequences, of an OTU (between 0\nand 1 if percentage desired)."
  type: long?
  inputBinding:
    prefix: --min-abundance
- id: in_minbootstrap__minrdpbootstrap
  doc: ":MIN_BOOTSTRAP, --min-rdp-bootstrap TAXONOMIC_LEVEL:MIN_BOOTSTRAP\nThe minimal\
    \ RDP bootstrap must be superior to this\nvalue (between 0 and 1)."
  type: long?
  inputBinding:
    prefix: -b
- id: in_ordered_ranks_levels
  doc: "[RDP_TAXONOMY_RANKS [RDP_TAXONOMY_RANKS ...]], --rdp-taxonomy-ranks [RDP_TAXONOMY_RANKS\
    \ [RDP_TAXONOMY_RANKS ...]]\nThe ordered ranks levels present in the reference\n\
    databank. [Default: ['Domain', 'Phylum', 'Class',\n'Order', 'Family', 'Genus',\
    \ 'Species']]"
  type: boolean?
  inputBinding:
    prefix: -t
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
- id: in_contaminant
  doc: "Use this databank to filter sequence before\naffiliation."
  type: string?
  inputBinding:
    prefix: --contaminant
- id: in_output_biom
  doc: 'The Biom file output. [Default: filtered.biom]'
  type: File?
  inputBinding:
    prefix: --output-biom
- id: in_output_fast_a
  doc: 'The fasta output file. [Default: filtered.fasta]'
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_summary
  doc: "The HTML file containing the graphs. [Default:\nsummary.html]"
  type: File?
  inputBinding:
    prefix: --summary
- id: in_excluded
  doc: "The file that summarizes all the clusters discarded.\n[Default: excluded.tsv]"
  type: File?
  inputBinding:
    prefix: --excluded
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
  doc: 'The Biom file output. [Default: filtered.biom]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_biom)
- id: out_output_fast_a
  doc: 'The fasta output file. [Default: filtered.fasta]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a)
hints: []
cwlVersion: v1.1
baseCommand:
- filters.py
