class: CommandLineTool
id: gqt_convert.cwl
inputs:
- id: in_ped_file_name
  doc: PED file name (opt.)
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_sample_name_column
  doc: Sample name column in PED (Default 2)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_gqt_output_file
  doc: GQT output file name (opt.)
  type: File?
  inputBinding:
    prefix: -G
- id: in_vid_output_file
  doc: VID output file name (opt.)
  type: File?
  inputBinding:
    prefix: -V
- id: in_off_output_file
  doc: OFF output file name (opt.)
  type: File?
  inputBinding:
    prefix: -O
- id: in_bim_output_file
  doc: BIM output file name (opt.)
  type: File?
  inputBinding:
    prefix: -B
- id: in_ped_db_output
  doc: PED DB output file name (opt.)
  type: File?
  inputBinding:
    prefix: -D
- id: in_number_variants_opt
  doc: Number of variants (opt. with index)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_number_samples_opt
  doc: Number of samples (opt. with index)
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_tmp_working_directory
  doc: Tmp working directory(./ by defualt)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
- id: in_bcf
  doc: create a GQT index
  type: string
  inputBinding:
    position: 0
- id: in_ped
  doc: create sample phenotype database
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gqt_output_file
  doc: GQT output file name (opt.)
  type: File?
  outputBinding:
    glob: $(inputs.in_gqt_output_file)
- id: out_vid_output_file
  doc: VID output file name (opt.)
  type: File?
  outputBinding:
    glob: $(inputs.in_vid_output_file)
- id: out_off_output_file
  doc: OFF output file name (opt.)
  type: File?
  outputBinding:
    glob: $(inputs.in_off_output_file)
- id: out_bim_output_file
  doc: BIM output file name (opt.)
  type: File?
  outputBinding:
    glob: $(inputs.in_bim_output_file)
- id: out_ped_db_output
  doc: PED DB output file name (opt.)
  type: File?
  outputBinding:
    glob: $(inputs.in_ped_db_output)
hints: []
cwlVersion: v1.1
baseCommand:
- gqt
- convert
