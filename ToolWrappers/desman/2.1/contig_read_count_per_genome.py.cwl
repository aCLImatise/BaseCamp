class: CommandLineTool
id: contig_read_count_per_genome.py.cwl
inputs:
- id: in_max_n_processors
  doc: "Specify the maximum number of processors to use, if\nabsent, all present processors\
    \ will be used.\n"
  type: long
  inputBinding:
    prefix: --max_n_processors
- id: in_contig_fa
  doc: Contigs fasta file
  type: string
  inputBinding:
    position: 0
- id: in_re_ffa
  doc: Reference fasta file
  type: string
  inputBinding:
    position: 1
- id: in_bam_files
  doc: BAM files with mappings to contigs
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- contig_read_count_per_genome.py
