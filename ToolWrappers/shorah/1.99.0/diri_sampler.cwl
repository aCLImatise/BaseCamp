class: CommandLineTool
id: diri_sampler.cwl
inputs:
- id: in_sampling_iterationsa_alphak
  doc: "parameters\n-j <sampling iterations>\n-a <alpha>\n-K <startvalue for number\
    \ of clusters> not compat. with -k\n-k <avg. number of reads in each startcluster>\
    \ not compat. with -K\n-t <history time>\n-R <randomseed>"
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- diri_sampler
