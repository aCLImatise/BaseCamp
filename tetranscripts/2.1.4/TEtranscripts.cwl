class: CommandLineTool
id: TEtranscripts.cwl
inputs:
- id: t
  doc: sample [treatment sample ...], --treatment treatment sample [treatment sample
    ...] Sample files in group 1 (e.g. treatment/mutant)
  type: string
  inputBinding:
    prefix: -t
- id: c
  doc: sample [control sample ...], --control control sample [control sample ...]
    Sample files in group 2 (e.g. control/wildtype)
  type: string
  inputBinding:
    prefix: -c
- id: gtf
  doc: GTF file for gene annotations
  type: string
  inputBinding:
    prefix: --GTF
- id: te
  doc: GTF file for transposable element annotations
  type: string
  inputBinding:
    prefix: --TE
- id: format
  doc: '[input file format] Input file format: BAM or SAM. DEFAULT: BAM'
  type: boolean
  inputBinding:
    prefix: --format
- id: stranded
  doc: '[option]   Is this a stranded library? (no, forward, or reverse). For "first-strand"
    cDNA libraries (e.g. TruSeq stranded), choose reverse. For "second-strand" cDNA
    libraries (e.g. QIAseq stranded), choose forward. DEFAULT: no.'
  type: boolean
  inputBinding:
    prefix: --stranded
- id: mode
  doc: '[TE counting mode] How to count TE: uniq (unique mappers only), or multi (distribute
    among all alignments). DEFAULT: multi'
  type: boolean
  inputBinding:
    prefix: --mode
- id: project
  doc: '[name]      Name of this project. DEFAULT: TEtranscripts_out'
  type: boolean
  inputBinding:
    prefix: --project
- id: p
  doc: '[pvalue], --padj [pvalue] FDR cutoff for significance. DEFAULT: 0.05'
  type: boolean
  inputBinding:
    prefix: -p
- id: f
  doc: '[foldchange], --foldchange [foldchange] Fold-change ratio (absolute) cutoff
    for differential expression. DEFAULT: 1'
  type: boolean
  inputBinding:
    prefix: -f
- id: min_read
  doc: '[min_read]  read count cutoff. genes/TEs with reads less than the cutoff will
    not be considered. DEFAULT: 1'
  type: boolean
  inputBinding:
    prefix: --minread
- id: de_seq
  doc: Use DESeq (instead of DESeq2) for differential analysis.
  type: boolean
  inputBinding:
    prefix: --DESeq
- id: n
  doc: '[normalization], --norm [normalization] Normalization method : DESeq_default
    (DESeq default normalization method), TC (total annotated counts), quant (quantile
    normalization). Only applicable if DESeq is used instead of DESeq2. DEFAULT: DESeq_default'
  type: boolean
  inputBinding:
    prefix: -n
- id: sort_by_pos
  doc: Alignment files are sorted by chromosome position.
  type: boolean
  inputBinding:
    prefix: --sortByPos
- id: i
  doc: '[iteration], --iteration [iteration] number of iteration to run the optimization.
    DEFAULT: 100'
  type: boolean
  inputBinding:
    prefix: -i
- id: max_l
  doc: '[maxL]         maximum fragment length. DEFAULT:500'
  type: boolean
  inputBinding:
    prefix: --maxL
- id: min_l
  doc: '[minL]         minimum fragment length. DEFAULT:0'
  type: boolean
  inputBinding:
    prefix: --minL
- id: l
  doc: '[fragLength], --fragmentLength [fragLength] average fragment length for single
    end reads. For paired-end, estimated from the input alignment file. DEFAULT: for
    paired-end, estimate from the input alignment file; for single-end, ignored by
    default.'
  type: boolean
  inputBinding:
    prefix: -L
- id: verbose
  doc: '[verbose]   Set verbose level. 0: only show critical message, 1: show additional
    warning message, 2: show process information, 3: show debug messages. DEFAULT:2'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- TEtranscripts
