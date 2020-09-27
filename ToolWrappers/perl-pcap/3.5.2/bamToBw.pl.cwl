class: CommandLineTool
id: bamToBw.pl.cwl
inputs:
- id: in_bam
  doc: -b   BAM/CRAM file to be processed.
  type: boolean
  inputBinding:
    prefix: -bam
- id: in_outdir
  doc: -o   Folder to output result to.
  type: Directory
  inputBinding:
    prefix: -outdir
- id: in_reference
  doc: "Path to genome.fa.\n- Actually using fa.fai but for convention just provide\
    \ '.fa' file"
  type: boolean
  inputBinding:
    prefix: -reference
- id: in_number_threads_use
  doc: -t   Number of threads to use. [1]
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_ignore_reads_filter
  doc: -f   Ignore reads with the filter flags [int]
  type: boolean
  inputBinding:
    prefix: -filter
- id: in_only_process_step
  doc: "-p   Only process this step then exit, optionally set -index\nbamToBw - Per\
    \ chromosome BigWigs\ngenerateBw - Generates merged BigWig"
  type: boolean
  inputBinding:
    prefix: -process
- id: in_index
  doc: "-i   Optionally restrict '-p' to single job\nbwamem - 1..<lane_count>"
  type: boolean
  inputBinding:
    prefix: -index
- id: in_j_parallel_step
  doc: -j   For a parallel step report the number of jobs required
  type: boolean
  inputBinding:
    prefix: -jobs
- id: in_man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_i
  doc: ''
  type: long
  inputBinding:
    prefix: -i
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
- id: in_var_15
  doc: ''
  type: boolean
  inputBinding:
    prefix: -help
- id: in_j
  doc: ''
  type: boolean
  inputBinding:
    prefix: -j
- id: in_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: in_advanced_slash_farm
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_basic
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_brief
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_folder
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_full
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ignore
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_26
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_only
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_optional
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
- id: in_targeted
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bwa_mem
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_generate_bw
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_var_39
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
- id: in_var_42
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_processing
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_restrict
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_genome_dot_fa_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_parallel
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_51
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_be
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
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_58
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_report
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
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_var_64
  doc: ''
  type: long
  inputBinding:
    position: 6
- id: in_var_65
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
cwlVersion: v1.1
baseCommand:
- bamToBw.pl
