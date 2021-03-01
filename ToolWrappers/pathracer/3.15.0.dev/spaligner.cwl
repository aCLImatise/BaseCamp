class: CommandLineTool
id: spaligner.cwl
inputs:
- id: in_datatype
  doc: 'type of sequences: nanopore, pacbio'
  type: string?
  inputBinding:
    prefix: --datatype
- id: in_sequences
  doc: path to fasta/fastq file with sequences
  type: File?
  inputBinding:
    prefix: --sequences
- id: in_graph
  doc: path to GFA-file or SPAdes saves folder
  type: File?
  inputBinding:
    prefix: --graph
- id: in_km_er
  doc: graph k-mer size (odd value)
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_threads
  doc: '# of threads to use'
  type: string?
  inputBinding:
    prefix: --threads
- id: in_outdir
  doc: "output directory\n"
  type: Directory?
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "output directory\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0
cwlVersion: v1.1
baseCommand:
- spaligner
