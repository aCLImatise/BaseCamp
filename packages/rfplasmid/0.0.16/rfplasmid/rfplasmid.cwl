class: CommandLineTool
id: rfplasmid.cwl
inputs:
- id: in_species
  doc: define species (required)
  type: string?
  inputBinding:
    prefix: --species
- id: in_input
  doc: directory with input fasta files (required)
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_species_list
  doc: list of available species models
  type: boolean?
  inputBinding:
    prefix: --specieslist
- id: in_jelly
  doc: run jellyfish as kmer-count (faster)
  type: boolean?
  inputBinding:
    prefix: --jelly
- id: in_out
  doc: specify output directory
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_debug
  doc: no cleanup of intermediate files
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_training
  doc: trainings mode Random Forest
  type: boolean?
  inputBinding:
    prefix: --training
- id: in_threads
  doc: "specify number of threads to be used, default is max\navailable threads up\
    \ to 16 threads"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: specify output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rfplasmid:0.0.16--py_0
cwlVersion: v1.1
baseCommand:
- rfplasmid
