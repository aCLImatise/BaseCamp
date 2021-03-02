class: CommandLineTool
id: delly_classify.cwl
inputs:
- id: in_arg_somatic_somatic
  doc: '[ --filter ] arg (=somatic)        Filter mode (somatic, germline)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_filtered_file
  doc: '[ --outfile ] arg (="cnv.bcf")     Filtered CNV BCF output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_min_size
  doc: '[ --minsize ] arg (=1000)          min. CNV size'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_max_size
  doc: '[ --maxsize ] arg (=500000000)     max. CNV size'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_filter_sites_pass
  doc: '[ --pass ]                         Filter sites for PASS'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_twocolumn_sample
  doc: "[ --samples ] arg                  Two-column sample file listing sample\n\
    name and tumor or control"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_probability_germline
  doc: '[ --pgerm ] arg (=0.00100000005)   probability germline'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_arg_min_cn
  doc: '[ --cn-offset ] arg (=0.200000003) min. CN offset'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_baseline_ploidy
  doc: '[ --ploidy ] arg (=2)              baseline ploidy'
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_arg_min_site
  doc: '[ --qual ] arg (=50)               min. site quality'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_arg_max_population
  doc: '[ --maxsd ] arg (=0.150000006)     max. population SD'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_input_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_filtered_file
  doc: '[ --outfile ] arg (="cnv.bcf")     Filtered CNV BCF output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_filtered_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/delly:0.8.7--hf3ca161_0
cwlVersion: v1.1
baseCommand:
- delly
- classify
