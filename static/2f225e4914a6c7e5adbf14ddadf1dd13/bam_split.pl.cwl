class: CommandLineTool
id: bam_split.pl.cwl
inputs:
- id: in_bam
  doc: Input file in BAM format
  type: boolean
  inputBinding:
    prefix: --bam
- id: in_bed
  doc: Create a BED6 file for each split BAM file
  type: boolean
  inputBinding:
    prefix: --bed
- id: in_bw
  doc: "Create BedGraph and bigWig coverage files for e.g. genome browser\nvisualization."
  type: boolean
  inputBinding:
    prefix: --bw
- id: in_bw_dir
  doc: "Directory name for resulting bigWig files. This directory is created\nas subdirectory\
    \ of the output directory. Default is 'vis'."
  type: Directory
  inputBinding:
    prefix: --bwdir
- id: in_cs
  doc: Chromosome sizes file (required if --bw is given).
  type: boolean
  inputBinding:
    prefix: --cs
- id: in_norm
  doc: Normalize resulting bigWig files
  type: boolean
  inputBinding:
    prefix: --norm
- id: in_out
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --out
- id: in_reverse
  doc: "Reverse the +/- strand mapping. This is required to achieve proper\nstrand\
    \ assignments for certain RNA-seq library preparation protocol."
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_scale
  doc: "If --bw is given, scale bigWig files to this number. Default is\n1000000."
  type: boolean
  inputBinding:
    prefix: --scale
- id: in_uniq
  doc: "Filter uniquely mapped reads by inspecting the NH:i: SAM attribute.\nSee also\
    \ the bam_uniq.pl utility, which extracts both uniquely and\nmultiply mapped reads\
    \ from BAM files without strand-splitting."
  type: boolean
  inputBinding:
    prefix: --uniq
- id: in_log
  doc: "Log file extension. Default is \".bam_split.log\". The log file is\ncreated\
    \ in the directory given via -o and its name is constructed\nfrom the base name\
    \ of the input BAM file and the log filename\nextension."
  type: boolean
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
- id: out_bw_dir
  doc: "Directory name for resulting bigWig files. This directory is created\nas subdirectory\
    \ of the output directory. Default is 'vis'."
  type: Directory
  outputBinding:
    glob: $(inputs.in_bw_dir)
- id: out_out
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- bam_split.pl
