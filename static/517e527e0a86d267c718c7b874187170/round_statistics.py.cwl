class: CommandLineTool
id: round_statistics.py.cwl
inputs:
- id: in_input_fasta_file
  doc: input fasta file.
  type: File?
  inputBinding:
    prefix: -f
- id: in_output_round_directory
  doc: output per round directory.
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_seed_fastq
  doc: seed fastq.
  type: string?
  inputBinding:
    prefix: -i
- id: in_output_folder
  doc: output folder.
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_rounds_check_stop
  doc: rounds to check. default:automatic stop!
  type: string?
  inputBinding:
    prefix: -R
- id: in_threads
  doc: threads.
  type: string?
  inputBinding:
    prefix: -t
- id: in_which_bowtie_two
  doc: "Assign the path to Bowtie2 binary files if not added\nto the path. Default:\
    \ try\nGetOrganelleDep/linux/bowtie2 first, then $PATH"
  type: long?
  inputBinding:
    prefix: --which-bowtie2
- id: in_random_seed
  doc: 'seed for random generator for bowtie2. Default: 12345'
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_threshold
  doc: "sites with coverage above the threshold would be\nmarked as covered. default:\
    \ 0,10"
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_keep_temp
  doc: Draw density plot using matplotlib, which should be
  type: boolean?
  inputBinding:
    prefix: --keep-temp
- id: in_debug
  doc: Debug mode.
  type: string?
  inputBinding:
    prefix: --debug
- id: in_installed_dot
  doc: --max-coverage-tick=MAX_COV_TICK
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_round_directory
  doc: output per round directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_round_directory)
- id: out_output_folder
  doc: output folder.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- round_statistics.py
