class: CommandLineTool
id: rsat_peak_motifs.cwl
inputs:
- id: in_disco
  doc: ',dyads'
  type: string?
  inputBinding:
    prefix: -disco
- id: in_two_tails
  doc: ', which detects both under- and over-represented patterns.'
  type: boolean?
  inputBinding:
    prefix: -two_tails
- id: in_peak_motifs
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_testing_dot
  doc: Matthieu Defrance <defrance@ccg.unam.mx>
  type: string
  inputBinding:
    position: 0
- id: in_supported_dot
  doc: "\e[1mOUTPUT FORMAT\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_track_dot
  doc: The 4th column of the BED file must correspond to the fasta headers.
  type: string
  inputBinding:
    position: 0
- id: in_file_be_mb
  doc: The file should be sufficiently large (several Mb) to provide a
  type: string
  inputBinding:
    position: 0
- id: in_server_dot
  doc: "\e[1m-disco"
  type: string
  inputBinding:
    position: 0
- id: in_tasks_dot
  doc: "\e[33msynthesis\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_when_option_mnomergelengthsm
  doc: "When the option \e[33m-no_merge_lengths\e[0m is active, matrices are built"
  type: string
  inputBinding:
    position: 0
- id: in_one_five_seven_eight_eight_eight_dot
  doc: "\e[33mmatrix-quality\e[0m"
  type: long
  inputBinding:
    position: 0
- id: in_pss_mdot
  doc: If included by default, they can take a lot of disk space for large
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- peak-motifs
