class: CommandLineTool
id: spaligner.cwl
inputs:
- id: datatype
  doc: 'type of sequences: nanopore, pacbio'
  type: string
  inputBinding:
    prefix: --datatype
- id: sequences
  doc: path to fasta/fastq file with sequences
  type: string
  inputBinding:
    prefix: --sequences
- id: graph
  doc: path to GFA-file or SPAdes saves folder
  type: string
  inputBinding:
    prefix: --graph
- id: km_er
  doc: graph k-mer size (odd value)
  type: string
  inputBinding:
    prefix: --kmer
- id: threads
  doc: '# of threads to use'
  type: string
  inputBinding:
    prefix: --threads
- id: outdir
  doc: output directory
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- spaligner
