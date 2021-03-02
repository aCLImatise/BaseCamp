class: CommandLineTool
id: flye_samtools_merge.cwl
inputs:
- id: in_input_files_sorted_read
  doc: Input files are sorted by read name
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_input_files_sorted_tag
  doc: Input files are sorted by TAG value
  type: string?
  inputBinding:
    prefix: -t
- id: in_attach_rg_tag
  doc: Attach RG tag (inferred from file names)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_uncompressed_bam_output
  doc: Uncompressed BAM output
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_overwrite_output_bam
  doc: Overwrite the output BAM if exist
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_compress_level
  doc: Compress level 1
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_compression_level_from
  doc: Compression level, from 0 to 9 [-1]
  type: long?
  inputBinding:
    prefix: -l
- id: in_merge_file_str
  doc: Merge file in the specified region STR [all]
  type: File?
  inputBinding:
    prefix: -R
- id: in_copy_header_outbam
  doc: Copy the header in FILE to <out.bam> [in1.bam]
  type: File?
  inputBinding:
    prefix: -h
- id: in_combine_rg_headers
  doc: Combine @RG headers with colliding IDs [alter IDs to be distinct]
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_combine_pg_headers
  doc: Combine @PG headers with colliding IDs [alter IDs to be distinct]
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_override_random_seed
  doc: Override random seed
  type: string?
  inputBinding:
    prefix: -s
- id: in_list_input_bam
  doc: List of input BAM filenames, one per line [null]
  type: File?
  inputBinding:
    prefix: -b
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_output_fmt
  doc: "[,OPT[=VAL]]...\nSpecify output format (SAM, BAM, CRAM)"
  type: string?
  inputBinding:
    prefix: --output-fmt
- id: in_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --output-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: "Number of additional threads to use [0]\n"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_n_url_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -nurlf
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_merge
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_inn_dot_bam
  doc: ''
  type: string?
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_copy_header_outbam
  doc: Copy the header in FILE to <out.bam> [in1.bam]
  type: File?
  outputBinding:
    glob: $(inputs.in_copy_header_outbam)
- id: out_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fmt_option)
hints: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- merge
