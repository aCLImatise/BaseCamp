class: CommandLineTool
id: mag_improve.cwl
inputs:
- id: in_kmer_length_use
  doc: k-mer length to use
  type: long?
  inputBinding:
    prefix: -k
- id: in_reference
  doc: fasta file with reference sequence (for benchmarking purposes)
  type: File?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: '# of threads to use'
  type: string?
  inputBinding:
    prefix: --threads
- id: in_tmpdir
  doc: "scratch directory to use\n"
  type: Directory?
  inputBinding:
    prefix: --tmpdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spades:3.15.0--h633aebb_0
cwlVersion: v1.1
baseCommand:
- mag-improve
