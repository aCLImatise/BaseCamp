class: CommandLineTool
id: TEcount.cwl
inputs:
- id: in_bam
  doc: An RNAseq BAM file.
  type: File?
  inputBinding:
    prefix: --BAM
- id: in_gtf
  doc: GTF file for gene annotations
  type: File?
  inputBinding:
    prefix: --GTF
- id: in_te
  doc: GTF file for transposable element annotations
  type: File?
  inputBinding:
    prefix: --TE
- id: in_format
  doc: "file format\nInput file format: BAM or SAM. DEFAULT: BAM"
  type: File?
  inputBinding:
    prefix: --format
- id: in_stranded
  doc: "Is this a stranded library? (no, forward, or reverse).\nFor \"first-strand\"\
    \ cDNA libraries (e.g. TruSeq\nstranded), choose reverse. For \"second-strand\"\
    \ cDNA\nlibraries (e.g. QIAseq stranded), choose forward.\nDEFAULT: no."
  type: string?
  inputBinding:
    prefix: --stranded
- id: in_mode
  doc: "counting mode\nHow to count TE: uniq (unique mappers only), or multi\n(distribute\
    \ among all alignments). DEFAULT: multi"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_project
  doc: 'Name of this project. DEFAULT: TEcount_out'
  type: string?
  inputBinding:
    prefix: --project
- id: in_sort_by_pos
  doc: Alignment file is sorted by chromosome position.
  type: boolean?
  inputBinding:
    prefix: --sortByPos
- id: in_iteration
  doc: "number of iteration to run the optimization. DEFAULT:\n100"
  type: long?
  inputBinding:
    prefix: --iteration
- id: in_max_l
  doc: maximum fragment length. DEFAULT:500
  type: long?
  inputBinding:
    prefix: --maxL
- id: in_min_l
  doc: minimum fragment length. DEFAULT:0
  type: long?
  inputBinding:
    prefix: --minL
- id: in_fragment_length
  doc: "average fragment length for single end reads. For\npaired-end, estimated from\
    \ the input alignment file.\nDEFAULT: for paired-end, estimate from the input\n\
    alignment file; for single-end, ignored by default."
  type: long?
  inputBinding:
    prefix: --fragmentLength
- id: in_verbose
  doc: "[verbose]   Set verbose level. 0: only show critical message, 1:\nshow additional\
    \ warning message, 2: show process\ninformation, 3: show debug messages. DEFAULT:2"
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tetranscripts:2.2.1--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- TEcount
