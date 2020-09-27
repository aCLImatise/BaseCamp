class: CommandLineTool
id: bam_to_bigwig.pl.cwl
inputs:
- id: in_bam
  doc: Input file in BAM format
  type: boolean
  inputBinding:
    prefix: --bam
- id: in_cs
  doc: Chromosome sizes file
  type: boolean
  inputBinding:
    prefix: --cs
- id: in_strand
  doc: "Use this option if the input BAM file is strictly strand-specific,\nie. contains\
    \ only reads mapped to either the positive or negative\nstrand. Possible values\
    \ are either '+' or '-'. If the value given\nhere is '+', the interim bedGraph\
    \ file will be created with positive\nvalues. A '-' given here will create the\
    \ inerim bedGraph file with\nnegative values, which is required for proper visualization\
    \ of\nbigWig files holding coverage profiles of reads mapped to the\nnegative\
    \ strand in the UCSC genome browser. If the input BAM file is\nnot strand-specific,\
    \ ie contains reads mapped to both positive and\nnegative strand, then the default\
    \ value '+' will be used, resulting\nin bigWig coverage profiles rendered in positive\
    \ (y-axis direction)\nin the UCSC genome browser."
  type: boolean
  inputBinding:
    prefix: --strand
- id: in_output_directory
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_log
  doc: "Name of the log file. Unless specified, the default log file will be\n\"bam_to_bigwig.log\"\
    \ in the given output directory."
  type: File
  inputBinding:
    prefix: --log
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_log
  doc: "Name of the log file. Unless specified, the default log file will be\n\"bam_to_bigwig.log\"\
    \ in the given output directory."
  type: File
  outputBinding:
    glob: $(inputs.in_log)
cwlVersion: v1.1
baseCommand:
- bam_to_bigwig.pl
