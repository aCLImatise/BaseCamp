class: CommandLineTool
id: spades_gmapper.cwl
inputs:
- id: in_kmer_length_use
  doc: k-mer length to use
  type: long?
  inputBinding:
    prefix: -k
- id: in__threads_use
  doc: '# of threads to use'
  type: string?
  inputBinding:
    prefix: -t
- id: in_tmp_dir
  doc: "scratch directory to use\n"
  type: Directory?
  inputBinding:
    prefix: --tmp-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spades:3.15.0--h633aebb_0
cwlVersion: v1.1
baseCommand:
- spades-gmapper
