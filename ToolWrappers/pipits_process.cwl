class: CommandLineTool
id: pipits_process.cwl
inputs:
- id: in_sequences_fasta_typically
  doc: "[REQUIRED] ITS sequences in FASTA. Typically output\nfrom pipits_funits"
  type: File
  inputBinding:
    prefix: -i
- id: in_directory_output_results
  doc: '[REQUIRED] Directory to output results.'
  type: Directory
  inputBinding:
    prefix: -o
- id: in_vsearch_identity_threshold
  doc: 'VSEARCH - Identity threshold [default: 0.97]'
  type: double
  inputBinding:
    prefix: -d
- id: in_rdp_assignment_confidence
  doc: "RDP assignment confidence threshold - RDP Classifier\nconfidence threshold\
    \ for output [default: 0.85]"
  type: double
  inputBinding:
    prefix: -c
- id: in_sample_list_file
  doc: "[REQUIRED] Sample list file. Generated with\nPIPITS_GETREADPAIRSLIST prior\
    \ to PIPITS_PREP"
  type: File
  inputBinding:
    prefix: -l
- id: in_include_unique_seqs
  doc: "[REQUIRED] PIPITS by default removes unique sequences\nbefore clustering.\
    \ This means you wouldn't have any\nsingletons. If you want singletons, then choose\
    \ this\noption. It can take much longer to process."
  type: boolean
  inputBinding:
    prefix: --includeuniqueseqs
- id: in_retain_files_space
  doc: "Retain intermediate files (Beware intermediate files\nuse excessive disk space!)"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_verbose_mode
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: in_number_of_threads
  doc: 'Number of Threads [default: 1]'
  type: long
  inputBinding:
    prefix: -t
- id: in_xms
  doc: "The minimum size, in bytes, of the memory allocation\npool for JVM"
  type: long
  inputBinding:
    prefix: --Xms
- id: in_x_mx
  doc: "The maximum size, in bytes, of the memory allocation\npool for JVM"
  type: long
  inputBinding:
    prefix: --Xmx
- id: in_war_cup
  doc: "Also classify using Warcup database. The most recent\nwarcup db will be downloaded\
    \ automatically."
  type: boolean
  inputBinding:
    prefix: --warcup
- id: in_unite
  doc: "UNITE db version to be used - PIPITS will download db\nautomaticlly. Leaving\
    \ this option out will default to\nthe most recent version of UNITE available\
    \ to PIPITS.\nCurrently 02_02_2019.\n"
  type: string
  inputBinding:
    prefix: --unite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_output_results
  doc: '[REQUIRED] Directory to output results.'
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_output_results)
cwlVersion: v1.1
baseCommand:
- pipits_process
