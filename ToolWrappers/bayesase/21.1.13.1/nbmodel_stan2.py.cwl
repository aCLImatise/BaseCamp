class: CommandLineTool
id: nbmodel_stan2.py.cwl
inputs:
- id: in_design
  doc: TSV design file with sampleID names to analyze
  type: File?
  inputBinding:
    prefix: --design
- id: in_in_file
  doc: TSV input file with merged comparates and new headers
  type: File?
  inputBinding:
    prefix: --infile
- id: in_cond
  doc: Number of conditions
  type: long?
  inputBinding:
    prefix: --cond
- id: in_iterations
  doc: 'Optional number of iterations (default: 100000)'
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_warm_up
  doc: 'Optional number of warmups (default: 10000)'
  type: long?
  inputBinding:
    prefix: --warmup
- id: in_outfile
  doc: "Output file name/path. Default -\nbayesian_output_$name.tabular"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_r_script
  doc: Full path to R script if not using package version
  type: File?
  inputBinding:
    prefix: --rscript
- id: in_stan_model
  doc: "Full path to stan model if not using package version\n"
  type: File?
  inputBinding:
    prefix: --stanmodel
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Output file name/path. Default -\nbayesian_output_$name.tabular"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- nbmodel_stan2.py
