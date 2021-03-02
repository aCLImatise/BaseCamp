class: CommandLineTool
id: ntcard.cwl
inputs:
- id: in_threads
  doc: use N parallel threads [1] (N>=2 should be used when input files are >=2)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_km_er
  doc: the length of kmer
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_gap
  doc: the length of gap in the gap seed [0]. g mod 2 must equal k mod 2 unless g
    == 0
  type: long?
  inputBinding:
    prefix: --gap
- id: in_cov
  doc: the maximum coverage of kmer in output [1000]
  type: long?
  inputBinding:
    prefix: --cov
- id: in_pref
  doc: the prefix for output file name(s)
  type: File?
  inputBinding:
    prefix: --pref
- id: in_output
  doc: the name for output file name (used when output should be a single file)
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pref
  doc: the prefix for output file name(s)
  type: File?
  outputBinding:
    glob: $(inputs.in_pref)
- id: out_output
  doc: the name for output file name (used when output should be a single file)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ntcard:1.2.2--he513fc3_0
cwlVersion: v1.1
baseCommand:
- ntcard
