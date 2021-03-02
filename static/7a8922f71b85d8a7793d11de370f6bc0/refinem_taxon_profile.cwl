class: CommandLineTool
id: refinem_taxon_profile.cwl
inputs:
- id: in_per_to_classify
  doc: "minimum percentage of genes to assign a scaffold to a\ntaxonomic group (default:\
    \ 20.0)"
  type: double?
  inputBinding:
    prefix: --per_to_classify
- id: in_evalue
  doc: 'e-value of valid hits (default: 0.001)'
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_per_identity
  doc: 'percent identity of valid hits (default: 30.0)'
  type: double?
  inputBinding:
    prefix: --per_identity
- id: in_per_aln_len
  doc: "minimum percent coverage of query sequence for\nreporting an alignment (default:\
    \ 50.0)"
  type: double?
  inputBinding:
    prefix: --per_aln_len
- id: in_protein_ext
  doc: "extension of amino acid gene files (other files in\ndirectory are ignored)\
    \ (default: faa)"
  type: Directory?
  inputBinding:
    prefix: --protein_ext
- id: in_tmpdir
  doc: "specify alternative directory for temporary files\n(default: /tmp)"
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_cpus
  doc: 'number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: suppress output of logger
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_genome_prot_dir
  doc: directory containing amino acid genes for each genome
  type: string
  inputBinding:
    position: 0
- id: in_scaffold_stats_file
  doc: file with statistics for each scaffold
  type: string
  inputBinding:
    position: 1
- id: in_db_file
  doc: DIAMOND database of reference genomes
  type: string
  inputBinding:
    position: 2
- id: in_taxonomy_file
  doc: taxonomic assignment of each reference genomes
  type: string
  inputBinding:
    position: 3
- id: in_output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/refinem:0.1.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- refinem
- taxon_profile
