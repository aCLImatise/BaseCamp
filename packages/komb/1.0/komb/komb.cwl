class: CommandLineTool
id: komb.cwl
inputs:
- id: in_output
  doc: 'Output directory [Default: output_yyyymmdd_hhmmss]'
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: 'Number of Threads [Default: Max]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_km_er
  doc: 'Kmer size for Abyss, Bifrost uses 31 [Default: 31]'
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_num_hits
  doc: 'Bowtie2 maximum number of hits [Default: 1000]'
  type: long?
  inputBinding:
    prefix: --numhits
- id: in_read_len
  doc: 'Read Length (can be average) [Default: 100]'
  type: long?
  inputBinding:
    prefix: --readlen
- id: in_reads
  doc: "(required)  Paired-read file separated by ',' [Default: read1.fq\n,read2.fq]"
  type: File?
  inputBinding:
    prefix: --reads
- id: in_alignment
  doc: 'Keep alignment files [Default: delete alignment]'
  type: boolean?
  inputBinding:
    prefix: --alignment
- id: in_fast_a
  doc: 'Reads provided are fasta files [Default: fastq]'
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_bifrost
  doc: 'Run bifrost instead of abyss [Default: run abyss]'
  type: boolean?
  inputBinding:
    prefix: --bifrost
- id: in_spades
  doc: "Runs spades and uses GFA graph instead of bifrost + bowtie2 [Default:\nrun\
    \ abyss]"
  type: boolean?
  inputBinding:
    prefix: --spades
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output directory [Default: output_yyyymmdd_hhmmss]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/komb:1.0--py36h5202f60_0
cwlVersion: v1.1
baseCommand:
- komb
