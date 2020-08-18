class: CommandLineTool
id: ../../../comparem_kmer_usage.cwl
inputs:
- id: counts
  doc: output raw counts instead of frequencies
  type: boolean
  inputBinding:
    prefix: --counts
- id: length_kmers_eg
  doc: 'length of kmers, e.g., 4 -> tetranucleotides (default: 4)'
  type: string
  inputBinding:
    prefix: -k
- id: file_ext
  doc: 'extension of files to process (default: fna)'
  type: File
  inputBinding:
    prefix: --file_ext
- id: cpus
  doc: 'number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --cpus
- id: silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: genome_files
  doc: input files with genomes in nucleotide space
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: output file indicating kmer usage of each genome
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- comparem
- kmer_usage
