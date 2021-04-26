class: CommandLineTool
id: analyze.cwl
inputs:
- id: in_no_cuda
  doc: "Disables CUDA for use off GPU, if this is not\nspecified the utility will\
    \ check availability of\ntorch.cuda"
  type: boolean?
  inputBinding:
    prefix: --no-cuda
- id: in_model
  doc: "name of the saved model weights to load (default:\nmodel/mimsi_mskcc_impact_200.model)"
  type: long?
  inputBinding:
    prefix: --model
- id: in_save
  doc: "save the results of the evaluation to a numpy array or\na tsv text file"
  type: boolean?
  inputBinding:
    prefix: --save
- id: in_save_format
  doc: "save the results of the evaluation to a numpy array or\nas summary in a tsv\
    \ text file or both"
  type: string?
  inputBinding:
    prefix: --save-format
- id: in_seed
  doc: 'Random Seed (default: 2)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_microsatellites_list
  doc: "The list of microsatellites to check in the\ntumor/normal pair (default:\n\
    utils/microsatellites.list)"
  type: string?
  inputBinding:
    prefix: --microsatellites-list
- id: in_save_location
  doc: "The location on the filesystem to save the converted\nvectors and final results\
    \ (default:\nCurrent_working_directory/mimsi_results/). WARNING:\nExisitng files\
    \ in this directory in the formats\n*_locations.npy and *_data.npy will be deleted!"
  type: Directory?
  inputBinding:
    prefix: --save-location
- id: in_cores
  doc: 'Number of cores to utilize in parallel (default: 16)'
  type: long?
  inputBinding:
    prefix: --cores
- id: in_coverage
  doc: "Required coverage for both the tumor and the normal.\nAny coverage in excess\
    \ of this limit will be randomly\ndownsampled"
  type: string?
  inputBinding:
    prefix: --coverage
- id: in_confidence_interval
  doc: "Confidence interval for the estimated MSI Score\nreported in the tsv output\
    \ file (default: 0.95)"
  type: File?
  inputBinding:
    prefix: --confidence-interval
- id: in_use_attention
  doc: "Use attention pooling rather than average pooling to\naggregate sample embeddings\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --use-attention
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
- id: out_confidence_interval
  doc: "Confidence interval for the estimated MSI Score\nreported in the tsv output\
    \ file (default: 0.95)"
  type: File?
  outputBinding:
    glob: $(inputs.in_confidence_interval)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mimsi:0.4.3--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- analyze
