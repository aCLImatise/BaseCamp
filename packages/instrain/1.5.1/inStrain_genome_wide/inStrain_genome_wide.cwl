class: CommandLineTool
id: inStrain_genome_wide.cwl
inputs:
- id: in_scaffold_bin_be
  doc: "[STB [STB ...]], --stb [STB [STB ...]]\nScaffold to bin. This can be a file\
    \ with each line\nlisting a scaffold and a bin name, tab-seperated. This\ncan\
    \ also be a space-seperated list of .fasta files,\nwith one genome per .fasta\
    \ file. If nothing is\nprovided, all scaffolds will be treated as belonging\n\
    to the same genome (default: [])"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_is
  doc: 'an inStrain profile object (default: None)'
  type: string?
  inputBinding:
    prefix: --IS
- id: in_store_everything
  doc: 'Store gene sequences in the IS object (default: False)'
  type: boolean?
  inputBinding:
    prefix: --store_everything
- id: in_mm_level
  doc: "Create output files on the mm level (see documentation\nfor info) (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --mm_level
- id: in_skip_mm_profiling
  doc: "Dont perform analysis on an mm level; saves RAM and\ntime; impacts plots and\
    \ raw_data (default: False)"
  type: boolean?
  inputBinding:
    prefix: --skip_mm_profiling
- id: in_processes
  doc: 'Number of processes to use (default: 6)'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_stb
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/instrain:1.5.1--py_0
cwlVersion: v1.1
baseCommand:
- inStrain
- genome_wide
