class: CommandLineTool
id: abyss_overlap.cwl
inputs:
- id: in_min
  doc: find matches at least N bp [50]
  type: long?
  inputBinding:
    prefix: --min
- id: in_max
  doc: find matches less than N bp [inf]
  type: long?
  inputBinding:
    prefix: --max
- id: in_threads
  doc: use N parallel threads [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sample
  doc: sample the suffix array [1]
  type: long?
  inputBinding:
    prefix: --sample
- id: in_tred
  doc: remove transitive edges [default]
  type: boolean?
  inputBinding:
    prefix: --tred
- id: in_no_tred
  doc: do not remove transitive edges
  type: boolean?
  inputBinding:
    prefix: --no-tred
- id: in_adj
  doc: output the results in adj format
  type: boolean?
  inputBinding:
    prefix: --adj
- id: in_dot
  doc: output the results in dot format [default]
  type: boolean?
  inputBinding:
    prefix: --dot
- id: in_sam
  doc: output the results in SAM format
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_ss
  doc: expect contigs to be oriented correctly
  type: boolean?
  inputBinding:
    prefix: --SS
- id: in_no_ss
  doc: no assumption about contig orientation
  type: boolean?
  inputBinding:
    prefix: --no-SS
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.1--hd403d74_0
cwlVersion: v1.1
baseCommand:
- abyss-overlap
