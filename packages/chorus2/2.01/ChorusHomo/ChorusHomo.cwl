class: CommandLineTool
id: ChorusHomo.cwl
inputs:
- id: in_jellyfish
  doc: The path where Jellyfish software installed
  type: File?
  inputBinding:
    prefix: --jellyfish
- id: in_bwa
  doc: The path where BWA software installed
  type: File?
  inputBinding:
    prefix: --bwa
- id: in_source
  doc: "Fasta format genome file (GenomeA) which the probe\nwere generated from, should\
    \ include all sequences from\ngenome"
  type: File?
  inputBinding:
    prefix: --source
- id: in_target
  doc: "Fasta format genome file (GenomeB) which the probe\nwill be aligned to, should\
    \ include all sequences from\ngenome"
  type: File?
  inputBinding:
    prefix: --target
- id: in_input
  doc: "BED format input file, contains oligo probes generated\nfrom Chorus2"
  type: File?
  inputBinding:
    prefix: --input
- id: in_save
  doc: The output folder for saving results
  type: Directory?
  inputBinding:
    prefix: --save
- id: in_threads
  doc: 'Number of threads or CPUs to use. (Default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save
  doc: The output folder for saving results
  type: Directory?
  outputBinding:
    glob: $(inputs.in_save)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chorus2:2.01--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ChorusHomo
