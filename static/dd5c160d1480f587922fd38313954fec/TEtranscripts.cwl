class: CommandLineTool
id: TEtranscripts.cwl
inputs:
- id: in_te
  doc: '[--format [input file format]]'
  type: File
  inputBinding:
    prefix: --TE
- id: in_group_eg_treatmentmutant
  doc: "sample [treatment sample ...], --treatment treatment sample [treatment sample\
    \ ...]\nSample files in group 1 (e.g. treatment/mutant)"
  type: long
  inputBinding:
    prefix: -t
- id: in_group_eg_controlwildtype
  doc: "sample [control sample ...], --control control sample [control sample ...]\n\
    Sample files in group 2 (e.g. control/wildtype)"
  type: long
  inputBinding:
    prefix: -c
- id: in_gtf
  doc: GTF file for gene annotations
  type: File
  inputBinding:
    prefix: --GTF
- id: in_format
  doc: "[input file format]\nInput file format: BAM or SAM. DEFAULT: BAM"
  type: boolean
  inputBinding:
    prefix: --format
- id: in_stranded
  doc: "[option]   Is this a stranded library? (no, forward, or reverse).\nFor \"\
    first-strand\" cDNA libraries (e.g. TruSeq\nstranded), choose reverse. For \"\
    second-strand\" cDNA\nlibraries (e.g. QIAseq stranded), choose forward.\nDEFAULT:\
    \ no."
  type: boolean
  inputBinding:
    prefix: --stranded
- id: in_mode
  doc: "[TE counting mode]\nHow to count TE: uniq (unique mappers only), or multi\n\
    (distribute among all alignments). DEFAULT: multi"
  type: boolean
  inputBinding:
    prefix: --mode
- id: in_project
  doc: '[name]      Name of this project. DEFAULT: TEtranscripts_out'
  type: boolean
  inputBinding:
    prefix: --project
- id: in_fdr_cutoff_significance
  doc: "[pvalue], --padj [pvalue]\nFDR cutoff for significance. DEFAULT: 0.05"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_foldchange_ratio_absolute
  doc: "[foldchange], --foldchange [foldchange]\nFold-change ratio (absolute) cutoff\
    \ for differential\nexpression. DEFAULT: 1"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_min_read
  doc: "[min_read]  read count cutoff. genes/TEs with reads less than the\ncutoff\
    \ will not be considered. DEFAULT: 1"
  type: boolean
  inputBinding:
    prefix: --minread
- id: in_de_seq
  doc: Use DESeq (instead of DESeq2) for differential
  type: boolean
  inputBinding:
    prefix: --DESeq
- id: in_number_iteration_run
  doc: "[iteration], --iteration [iteration]\nnumber of iteration to run the optimization.\
    \ DEFAULT:\n100"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_max_l
  doc: '[maxL]         maximum fragment length. DEFAULT:500'
  type: boolean
  inputBinding:
    prefix: --maxL
- id: in_min_l
  doc: '[minL]         minimum fragment length. DEFAULT:0'
  type: boolean
  inputBinding:
    prefix: --minL
- id: in_average_fragment_length
  doc: "[fragLength], --fragmentLength [fragLength]\naverage fragment length for single\
    \ end reads. For\npaired-end, estimated from the input alignment file.\nDEFAULT:\
    \ for paired-end, estimate from the input\nalignment file; for single-end, ignored\
    \ by default."
  type: boolean
  inputBinding:
    prefix: -L
- id: in_verbose
  doc: "[verbose]   Set verbose level. 0: only show critical message, 1:\nshow additional\
    \ warning message, 2: show process\ninformation, 3: show debug messages. DEFAULT:2"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_analysis_dot
  doc: -n [normalization], --norm [normalization]
  type: string
  inputBinding:
    position: 0
- id: in_de_seq_default
  doc: --sortByPos           Alignment files are sorted by chromosome position.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- TEtranscripts
