class: CommandLineTool
id: akt_kin.cwl
inputs:
- id: in_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: minkin
  doc: ':                   threshold for relatedness output (none)'
  type: boolean
  inputBinding:
    prefix: --minkin
- id: freq_file
  doc: ':                a file containing population allele frequencies to use in
    kinship calculation'
  type: boolean
  inputBinding:
    prefix: --freq-file
- id: method
  doc: ':                   type of estimator. 0:plink (default) 1:king-robust 2:genetic-relationship-matrix'
  type: boolean
  inputBinding:
    prefix: --method
- id: af_tag
  doc: ':                    allele frequency tag (default AF)'
  type: boolean
  inputBinding:
    prefix: --aftag
- id: threads
  doc: ':                  num threads'
  type: boolean
  inputBinding:
    prefix: --threads
- id: regions_file
  doc: ':             restrict to regions listed in a file'
  type: boolean
  inputBinding:
    prefix: --regions-file
- id: regions
  doc: ':                  chromosome region'
  type: boolean
  inputBinding:
    prefix: --regions
- id: targets_file
  doc: ':             similar to -R but streams rather than index-jumps'
  type: boolean
  inputBinding:
    prefix: --targets-file
- id: targets
  doc: ':                  similar to -r but streams rather than index-jumps'
  type: boolean
  inputBinding:
    prefix: --targets
- id: force
  doc: ':                    run kin without -R/-T/-F'
  type: boolean
  inputBinding:
    prefix: --force
- id: samples
  doc: ':                  list of samples'
  type: boolean
  inputBinding:
    prefix: --samples
- id: samples_file
  doc: ':             list of samples, file'
  type: boolean
  inputBinding:
    prefix: --samples-file
outputs: []
cwlVersion: v1.1
baseCommand:
- akt
- kin
