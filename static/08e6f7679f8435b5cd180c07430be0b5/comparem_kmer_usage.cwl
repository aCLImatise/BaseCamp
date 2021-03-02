class: CommandLineTool
id: comparem_kmer_usage.cwl
inputs:
- id: in_counts
  doc: output raw counts instead of frequencies
  type: boolean?
  inputBinding:
    prefix: --counts
- id: in_length_kmers_eg
  doc: "length of kmers, e.g., 4 -> tetranucleotides (default:\n4)"
  type: long?
  inputBinding:
    prefix: -k
- id: in_file_ext
  doc: 'extension of files to process (default: fna)'
  type: File?
  inputBinding:
    prefix: --file_ext
- id: in_cpus
  doc: 'number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: suppress output
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_genome_files
  doc: input files with genomes in nucleotide space
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: output file indicating kmer usage of each genome
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/comparem:0.1.2--py_0
cwlVersion: v1.1
baseCommand:
- comparem
- kmer_usage
