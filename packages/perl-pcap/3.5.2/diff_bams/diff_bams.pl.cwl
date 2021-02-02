class: CommandLineTool
id: diff_bams.pl.cwl
inputs:
- id: in_bam_a
  doc: -a    The first BAM|CRAM file.
  type: boolean
  inputBinding:
    prefix: -bam_a
- id: in_bam_b
  doc: -b    The second BAM|CRAM file.
  type: boolean
  inputBinding:
    prefix: -bam_b
- id: in_ref
  doc: -r    Required for CRAM, genome.fa with co-located fai.
  type: boolean
  inputBinding:
    prefix: -ref
- id: in_count_flag_differences
  doc: -c    Count flag differences
  type: boolean
  inputBinding:
    prefix: -count
- id: in_skip_z
  doc: -s    Don't include reads with MAPQ=0 in comparison
  type: boolean
  inputBinding:
    prefix: -skipz
- id: in_man
  doc: -m    Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
- id: in_var_7
  doc: ''
  type: boolean
  inputBinding:
    prefix: -help
- id: in_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: in_c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: in_var_12
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: in_one_dot
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_two_dot
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_brief
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_16
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_don
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_full
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_19
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_other
  doc: ''
  type: string
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
- id: in_var_23
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_you
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_slash_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_processing
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_relevant
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_all
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_29
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_first
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_flag
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_33
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_information
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_paths_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_second
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bam_vertical_line_cram
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_cram
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_42
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_able
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_being
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_rare
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_incorporated
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_program
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_that
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_compare
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_order
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_works
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_var_60
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_around
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_var_64
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_var_65
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_at_sq
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_can
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_header
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_var_69
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_by
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_such
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_vs
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_compared
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_var_75
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_only
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_via
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_md_five
  doc: ''
  type: long
  inputBinding:
    position: 10
- id: in_due
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 12
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- diff_bams.pl
