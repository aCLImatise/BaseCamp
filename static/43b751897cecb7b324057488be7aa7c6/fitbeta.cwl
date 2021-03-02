class: CommandLineTool
id: fitbeta.cwl
inputs:
- id: in_snp_file
  doc: "File with read counts for germline SNP from all\nsamples"
  type: File?
  inputBinding:
    prefix: --snpfile
- id: in_seg_file
  doc: SEG file with allele-specific copy numbers
  type: File?
  inputBinding:
    prefix: --segfile
- id: in_sensitivity
  doc: "Sensitivity E to exclude SNPs with 0.5 - E <= BAF <\n0.5 (default: 0.1)"
  type: double?
  inputBinding:
    prefix: --sensitivity
- id: in_jobs
  doc: "Number of parallele jobs to use (default: equal to\nnumber of available processors)"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_restarts
  doc: 'Maximum size of brute-force search (default: 1e4)'
  type: long?
  inputBinding:
    prefix: --restarts
- id: in_skip
  doc: "Numbers to skip in the brute-force search (default:\n10)"
  type: long?
  inputBinding:
    prefix: --skip
- id: in_output
  doc: 'Output prefix (default: ./)'
  type: string?
  inputBinding:
    prefix: --output
- id: in_seed
  doc: 'Random-generator seed (default: None)'
  type: string?
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/decifer:0.0.2--py27ha58320b_0
cwlVersion: v1.1
baseCommand:
- fitbeta
