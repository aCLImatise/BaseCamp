class: CommandLineTool
id: bam_split.pl.cwl
inputs:
- id: bam
  doc: Input file in BAM format
  type: boolean
  inputBinding:
    prefix: --bam
- id: bed
  doc: Create a BED6 file for each split BAM file
  type: boolean
  inputBinding:
    prefix: --bed
- id: bw
  doc: Create BedGraph and bigWig coverage files for e.g. genome browser visualization.
  type: boolean
  inputBinding:
    prefix: --bw
- id: bw_dir
  doc: Directory name for resulting bigWig files. This directory is created as subdirectory
    of the output directory. Default is 'vis'.
  type: boolean
  inputBinding:
    prefix: --bwdir
- id: cs
  doc: Chromosome sizes file (required if --bw is given).
  type: boolean
  inputBinding:
    prefix: --cs
- id: norm
  doc: Normalize resulting bigWig files
  type: boolean
  inputBinding:
    prefix: --norm
- id: out
  doc: Output directory
  type: boolean
  inputBinding:
    prefix: --out
- id: reverse
  doc: Reverse the +/- strand mapping. This is required to achieve proper strand assignments
    for certain RNA-seq library preparation protocol.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: scale
  doc: If --bw is given, scale bigWig files to this number. Default is 1000000.
  type: boolean
  inputBinding:
    prefix: --scale
- id: uniq
  doc: 'Filter uniquely mapped reads by inspecting the NH:i: SAM attribute. See also
    the bam_uniq.pl utility, which extracts both uniquely and multiply mapped reads
    from BAM files without strand-splitting.'
  type: boolean
  inputBinding:
    prefix: --uniq
- id: log
  doc: Log file extension. Default is ".bam_split.log". The log file is created in
    the directory given via -o and its name is constructed from the base name of the
    input BAM file and the log filename extension.
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
- bam_split.pl
