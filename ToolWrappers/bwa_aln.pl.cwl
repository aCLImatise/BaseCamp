class: CommandLineTool
id: bwa_aln.pl.cwl
inputs:
- id: in_outdir
  doc: -o   Folder to output result to.
  type: Directory
  inputBinding:
    prefix: -outdir
- id: in_path_reference_file
  doc: Path to reference genome file *.fa[.gz]
  type: boolean
  inputBinding:
    prefix: -reference
- id: in_sample_name_applied
  doc: -s   Sample name to be applied to output file.
  type: File
  inputBinding:
    prefix: -sample
- id: in_number_threads_use
  doc: -t   Number of threads to use. [1]
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_only_process_step
  doc: "-p   Only process this step then exit, optionally set -index\nbam2fq - only\
    \ applicable if input is bam\naln - Run 'bwa aln'\nsampe - Run 'bwa sampe' and\
    \ sorting to BAM\nmark - Run duplicate marking (-index N/A)"
  type: boolean
  inputBinding:
    prefix: -process
- id: in_index
  doc: "-i   Optionally restrict '-p' to single job\nbam2fq - 1..<lane_count>\naln\
    \ - 1..<lane_count*2>\nsampe - 1..<lane_count>"
  type: boolean
  inputBinding:
    prefix: -index
- id: in_man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_t
  doc: ''
  type: long
  inputBinding:
    prefix: -t
- id: in_m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
- id: in_var_11
  doc: ''
  type: boolean
  inputBinding:
    prefix: -help
- id: in_i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: in_p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p
- id: in_brief
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_15
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_folder
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_var_17
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_only
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_optionally
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_other
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_required
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_run
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_25
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_targeted
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_aln
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam_two_fq
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_input_slash
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mark
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sampe
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_32
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_37
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_processing
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_restrict
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_can
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_44
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_46
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_result
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_step
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_applied
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_var_52
  doc: ''
  type: File
  inputBinding:
    position: 4
- id: in_var_53
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_then
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_use_dot
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_exit
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_names
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_wildcard
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: -o   Folder to output result to.
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_sample_name_applied
  doc: -s   Sample name to be applied to output file.
  type: File
  outputBinding:
    glob: $(inputs.in_sample_name_applied)
cwlVersion: v1.1
baseCommand:
- bwa_aln.pl
