class: CommandLineTool
id: qualityScores.cwl
inputs:
- id: in_name_input_file
  doc: Name of input file including read data. The default format is
  type: File
  inputBinding:
    prefix: -i
- id: in_gz_fast_q_input
  doc: file is in gzipped Fastq format.
  type: File
  inputBinding:
    prefix: --gzFASTQinput
- id: in_bam_input
  doc: Input file is in BAM format.
  type: boolean
  inputBinding:
    prefix: --BAMinput
- id: in_sam_input
  doc: Input file is in SAM format.
  type: boolean
  inputBinding:
    prefix: --SAMinput
- id: in_first_end
  doc: "Use only first reads in paired-end data. Only applicable for\npaired-end BAM/SAM\
    \ input."
  type: boolean
  inputBinding:
    prefix: --first-end
- id: in_second_end
  doc: "Use only second reads in paired-end data. Only applicable for\npaired-end\
    \ BAM/SAM input."
  type: boolean
  inputBinding:
    prefix: --second-end
- id: in_counted_reads
  doc: "Total number of reads to be extracted from the input\nfile. 10,000 by default."
  type: long
  inputBinding:
    prefix: --counted-reads
- id: in_phred_offset
  doc: refer to subread aligner.
  type: long
  inputBinding:
    prefix: --phred-offset
- id: in_fast_q_dot
  doc: -o <string>  Name of output file that is a text file including Phred scores
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qualityScores
