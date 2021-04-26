class: CommandLineTool
id: evaluate_sample.cwl
inputs:
- id: in_no_cuda
  doc: "Disables CUDA for use off GPU, if this is not\nspecified the utility will\
    \ check availability of\ntorch.cuda"
  type: boolean?
  inputBinding:
    prefix: --no-cuda
- id: in_model
  doc: name of the saved model weights to load
  type: string?
  inputBinding:
    prefix: --model
- id: in_vector_location
  doc: directory containing the generated vectors to evaluate
  type: Directory?
  inputBinding:
    prefix: --vector-location
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
- id: in_save_location
  doc: "The location on the filesystem to save the final\nresults (default:\nCurrent_working_directory/mimsi_results/)."
  type: string?
  inputBinding:
    prefix: --save-location
- id: in_name
  doc: "name of the run, this will be the filename for any\nsaved results in tsv format\
    \ with more than one\nsamples."
  type: File?
  inputBinding:
    prefix: --name
- id: in_seed
  doc: 'Random Seed (default: 2)'
  type: long?
  inputBinding:
    prefix: --seed
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
    \ (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --use-attention
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
- evaluate_sample
