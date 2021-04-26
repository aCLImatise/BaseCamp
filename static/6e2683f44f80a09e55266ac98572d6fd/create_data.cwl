class: CommandLineTool
id: create_data.cwl
inputs:
- id: in_microsatellites_list
  doc: "The list of microsatellites to check in the\ntumor/normal pair (default:\n\
    tests/microsatellites_impact_only.list)"
  type: string?
  inputBinding:
    prefix: --microsatellites-list
- id: in_save_location
  doc: "The location on the filesystem to save the converted\nvectors (default:\n\
    Current_working_directory/generated_samples/).\nWARNING: Existing files in this\
    \ directory in the\nformats *_locations.npy and *_data.npy will be\ndeleted!"
  type: Directory?
  inputBinding:
    prefix: --save-location
- id: in_coverage
  doc: "Required coverage for both the tumor and the normal.\nAny coverage in excess\
    \ of this limit will be randomly\ndownsampled"
  type: string?
  inputBinding:
    prefix: --coverage
- id: in_cores
  doc: Number of cores to utilize in parallel
  type: long?
  inputBinding:
    prefix: --cores
- id: in_tumor_bam
  doc: Tumor bam file for conversion
  type: File?
  inputBinding:
    prefix: --tumor-bam
- id: in_normal_bam
  doc: Matched normal bam file for conversion
  type: File?
  inputBinding:
    prefix: --normal-bam
- id: in_case_id
  doc: "Unique identifier for the single sample/case\nsubmitted. This will be the\
    \ filename for any saved\nresults (default: TestCase)"
  type: File?
  inputBinding:
    prefix: --case-id
- id: in_norm_case_id
  doc: 'Normal case name (default: None)'
  type: string?
  inputBinding:
    prefix: --norm-case-id
- id: in_case_list
  doc: "Case List for generating sample vectors in bulk, if\nspecified all other input\
    \ file args will be ignored"
  type: File?
  inputBinding:
    prefix: --case-list
- id: in_name
  doc: "name of the run submitted using --case-list, this will\nbe the filename for\
    \ any saved results in the tsv\nformat (default: BATCH)\n"
  type: File?
  inputBinding:
    prefix: --name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mimsi:0.4.3--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- create_data
