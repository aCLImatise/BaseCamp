class: CommandLineTool
id: bam_to_bigwig.pl.cwl
inputs:
- id: bam
  doc: Input file in BAM format
  type: boolean
  inputBinding:
    prefix: --bam
- id: cs
  doc: Chromosome sizes file
  type: boolean
  inputBinding:
    prefix: --cs
- id: strand
  doc: Use this option if the input BAM file is strictly strand-specific, ie. contains
    only reads mapped to either the positive or negative strand. Possible values are
    either '+' or '-'. If the value given here is '+', the interim bedGraph file will
    be created with positive values. A '-' given here will create the inerim bedGraph
    file with negative values, which is required for proper visualization of bigWig
    files holding coverage profiles of reads mapped to the negative strand in the
    UCSC genome browser. If the input BAM file is not strand-specific, ie contains
    reads mapped to both positive and negative strand, then the default value '+'
    will be used, resulting in bigWig coverage profiles rendered in positive (y-axis
    direction) in the UCSC genome browser.
  type: boolean
  inputBinding:
    prefix: --strand
- id: o
  doc: Output directory
  type: boolean
  inputBinding:
    prefix: -o
- id: log
  doc: Name of the log file. Unless specified, the default log file will be "bam_to_bigwig.log"
    in the given output directory.
  type: boolean
  inputBinding:
    prefix: --log
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_to_bigwig.pl
