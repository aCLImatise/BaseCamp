class: CommandLineTool
id: akt_kin.cwl
inputs:
- id: in_minkin
  doc: ':                   threshold for relatedness output (none)'
  type: boolean?
  inputBinding:
    prefix: --minkin
- id: in_freq_file
  doc: ':                a file containing population allele frequencies to use in
    kinship calculation'
  type: boolean?
  inputBinding:
    prefix: --freq-file
- id: in_method
  doc: ':                   type of estimator. 0:plink (default) 1:king-robust 2:genetic-relationship-matrix'
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_af_tag
  doc: ':                    allele frequency tag (default AF)'
  type: boolean?
  inputBinding:
    prefix: --aftag
- id: in_threads
  doc: ':                  num threads'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_regions_file
  doc: ':             restrict to regions listed in a file'
  type: boolean?
  inputBinding:
    prefix: --regions-file
- id: in_regions
  doc: ':                  chromosome region'
  type: boolean?
  inputBinding:
    prefix: --regions
- id: in_targets_file
  doc: ':             similar to -R but streams rather than index-jumps'
  type: boolean?
  inputBinding:
    prefix: --targets-file
- id: in_targets
  doc: ':                  similar to -r but streams rather than index-jumps'
  type: boolean?
  inputBinding:
    prefix: --targets
- id: in_force
  doc: ':                    run kin without -R/-T/-F'
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_samples
  doc: ':                  list of samples'
  type: boolean?
  inputBinding:
    prefix: --samples
- id: in_samples_file
  doc: ':             list of samples, file'
  type: boolean?
  inputBinding:
    prefix: --samples-file
- id: in_in_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- akt
- kin
