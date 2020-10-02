class: CommandLineTool
id: samtools_view.cwl
inputs:
- id: in_output_bam
  doc: output BAM
  type: boolean
  inputBinding:
    prefix: -b
- id: in_print_header_alignments
  doc: print header only (no alignments)
  type: boolean
  inputBinding:
    prefix: -H
- id: in_input_is_sam
  doc: input is SAM
  type: boolean
  inputBinding:
    prefix: -S
- id: in_uncompressed_bam_output
  doc: uncompressed BAM output (force -b)
  type: boolean
  inputBinding:
    prefix: -u
- id: in_output_flag_hex
  doc: output FLAG in HEX (samtools-C specific)
  type: boolean
  inputBinding:
    prefix: -x
- id: in_output_flag_string
  doc: output FLAG in string (samtools-C specific)
  type: boolean
  inputBinding:
    prefix: -X
- id: in_list_reference_names
  doc: list of reference names and lengths (force -S) [null]
  type: File
  inputBinding:
    prefix: -t
- id: in_reference_sequence_file
  doc: reference sequence file (force -S) [null]
  type: File
  inputBinding:
    prefix: -T
- id: in_output_file_name
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: in_list_read_groups
  doc: list of read groups to be outputted [null]
  type: File
  inputBinding:
    prefix: -R
- id: in_required_flag_unset
  doc: required flag, 0 for unset [0]
  type: long
  inputBinding:
    prefix: -f
- id: in_filtering_flag_unset
  doc: filtering flag, 0 for unset [0]
  type: long
  inputBinding:
    prefix: -F
- id: in_minimum_mapping_quality
  doc: minimum mapping quality [0]
  type: long
  inputBinding:
    prefix: -q
- id: in_only_output_reads_library_str
  doc: only output reads in library STR [null]
  type: string
  inputBinding:
    prefix: -l
- id: in_only_output_reads_read_str
  doc: only output reads in read group STR [null]
  type: string
  inputBinding:
    prefix: -r
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- samtools
- view
