class: CommandLineTool
id: diri_sampler.cwl
inputs:
- id: files
  doc: -i <input data file>
  type: File
  inputBinding:
    position: 0
- id: parameters
  doc: -j <sampling iterations> -a <alpha> -K <startvalue for number of clusters>
    not compat. with -k -k <avg. number of reads in each startcluster> not compat.
    with -K -t <history time> -R <randomseed>
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- diri_sampler
