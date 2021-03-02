class: CommandLineTool
id: proBAM.py.cwl
inputs:
- id: in_file
  doc: location of the psm file to be processed
  type: File?
  inputBinding:
    prefix: --file
- id: in_name
  doc: "name of the project (will be determine how the output\nfile is called"
  type: File?
  inputBinding:
    prefix: --name
- id: in_mismatches
  doc: numpber of mismatches allowed during mapping
  type: string?
  inputBinding:
    prefix: --mismatches
- id: in_database
  doc: "Which database has to be used (currently only ENSEMBL\nis available"
  type: string?
  inputBinding:
    prefix: --database
- id: in_species
  doc: species to be used
  type: string?
  inputBinding:
    prefix: --species
- id: in_directory
  doc: location where to output files should be stored
  type: Directory?
  inputBinding:
    prefix: --directory
- id: in_rm_duplicates
  doc: Whether duplicates should be removes
  type: string?
  inputBinding:
    prefix: --rm_duplicates
- id: in_three_frame_translation
  doc: translate transcript sequences in 3 frames
  type: string?
  inputBinding:
    prefix: --three_frame_translation
- id: in_decoy_annotation
  doc: annotation for DECOY PSM
  type: string?
  inputBinding:
    prefix: --decoy_annotation
- id: in_sorting_order
  doc: sorting order of the SAM file
  type: string?
  inputBinding:
    prefix: --sorting_order
- id: in_pre_picked_annotation
  doc: Which/How annotation should be identified
  type: string?
  inputBinding:
    prefix: --pre_picked_annotation
- id: in_include_unmapped
  doc: Whether unmapped psm should be included in the output
  type: string?
  inputBinding:
    prefix: --include_unmapped
- id: in_conversion_mode
  doc: which ouput format should be generated
  type: string?
  inputBinding:
    prefix: --conversion_mode
- id: in_comments
  doc: add a comment to the file
  type: File?
  inputBinding:
    prefix: --comments
- id: in_validated_only
  doc: "only process validated PSMs (for mzIdentML\n"
  type: string?
  inputBinding:
    prefix: --validated_only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name
  doc: "name of the project (will be determine how the output\nfile is called"
  type: File?
  outputBinding:
    glob: $(inputs.in_name)
hints: []
cwlVersion: v1.1
baseCommand:
- proBAM.py
