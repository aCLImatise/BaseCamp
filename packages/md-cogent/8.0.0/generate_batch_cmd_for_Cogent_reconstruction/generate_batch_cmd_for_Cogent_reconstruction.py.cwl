class: CommandLineTool
id: generate_batch_cmd_for_Cogent_reconstruction.py.cwl
inputs:
- id: in_genome_fast_a_mmi
  doc: "Optional genome fasta or mmi (ex: genome.fasta or\ngenome.mmi). If provided,\
    \ Cogent output will be mapped\nto the genome using minimap2."
  type: long?
  inputBinding:
    prefix: --genome_fasta_mmi
- id: in_species_name
  doc: "Species name (optional, only used if genome fasta/mmi\nprovided).\n"
  type: string?
  inputBinding:
    prefix: --species_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/md-cogent:8.0.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- generate_batch_cmd_for_Cogent_reconstruction.py
