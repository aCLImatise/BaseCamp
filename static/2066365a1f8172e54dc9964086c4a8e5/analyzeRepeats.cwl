class: CommandLineTool
id: analyzeRepeats.pl.cwl
inputs:
- id: l1
  doc: (level one 'repeat name', i.e. AluSx3)
  type: string
  inputBinding:
    prefix: -L1
- id: l2
  doc: (level two 'repeat family', i.e. SINE)
  type: string
  inputBinding:
    prefix: -L2
- id: l3
  doc: (level three 'repeat class', i.e. Alu)
  type: string
  inputBinding:
    prefix: -L3
- id: max_div
  doc: '(max divergence, i.e. -div 0.10, default: 1.0)'
  type: boolean
  inputBinding:
    prefix: -maxdiv
- id: mind_iv
  doc: '(min divergence, default: 0)'
  type: boolean
  inputBinding:
    prefix: -mindiv
- id: minlength
  doc: '<#> (only return repeats at lest this length, default: 0)'
  type: boolean
  inputBinding:
    prefix: -minLength
- id: maxlength
  doc: '<#> (only return repeats less than % of full length, default: no max)'
  type: boolean
  inputBinding:
    prefix: -maxLength
- id: minlength_p
  doc: '<#> (only return repeats at lest % of full length, default: 0%)'
  type: boolean
  inputBinding:
    prefix: -minLengthP
- id: maxlength_p
  doc: '<#> (only return repeats less than % of full length, default: 100%)'
  type: boolean
  inputBinding:
    prefix: -maxLengthP
- id: condense_l2
  doc: (combine read counts for repeats for same L2 or L3 annotation)
  type: boolean
  inputBinding:
    prefix: -condenseL2
- id: rms_k
  doc: (force filtering of repeats in case it thinks your file is for RNA)
  type: boolean
  inputBinding:
    prefix: -rmsk
- id: og
  doc: (return positions relative to full length repeats)
  type: boolean
  inputBinding:
    prefix: -og
- id: gff
  doc: /-gff3 (for GFF or GFF3 formated files - ideally use a GTF formated file, default)
  type: boolean
  inputBinding:
    prefix: -gff
- id: gid
  doc: (use gene_id instead of transcript_id when parsing GTF file)
  type: boolean
  inputBinding:
    prefix: -gid
- id: count
  doc: '<genes|exons|introns|5utr|3utr|cds|pausing> (regions to count reads in, default:
    genes) Specify "-pausingOptions" to get more options for pausing analysis for
    GRO-Seq data'
  type: boolean
  inputBinding:
    prefix: -count
- id: strand
  doc: '<+|-|both> (count tags on indicated strand, default: both)'
  type: boolean
  inputBinding:
    prefix: -strand
- id: pc
  doc: '<#> or -tbp <#> (maximum tags to count per position, default: 0=no limit)'
  type: boolean
  inputBinding:
    prefix: -pc
- id: log
  doc: (output tag counts as randomized log2 values - for scatter plots)
  type: boolean
  inputBinding:
    prefix: -log
- id: sqrt
  doc: (output tag counts as randomized sqrt values - for scatter plots)
  type: boolean
  inputBinding:
    prefix: -sqrt
- id: condense_genes
  doc: (Only report one transcript from each gene locus with highest expression)
  type: boolean
  inputBinding:
    prefix: -condenseGenes
- id: no_condensing
  doc: '(do not condense counts from entries will same ID, default: do condense)'
  type: boolean
  inputBinding:
    prefix: -noCondensing
- id: no_condensing_parts
  doc: (i.e. report exons separately)
  type: boolean
  inputBinding:
    prefix: -noCondensingParts
- id: min
  doc: '<#> (minimum expression value to print, default: none)'
  type: boolean
  inputBinding:
    prefix: -min
- id: no_adj
  doc: (Don't normalize, report raw counts)
  type: string
  inputBinding:
    prefix: -noadj
- id: rp_km
  doc: /-fpkm (Report results as fragments per kb per million mapped)
  type: boolean
  inputBinding:
    prefix: -rpkm
- id: tpm
  doc: (Report transcripts per million)
  type: boolean
  inputBinding:
    prefix: -tpm
- id: norm
  doc: '<#> (Normalize to total mapped tags: default 1e7)'
  type: boolean
  inputBinding:
    prefix: -norm
- id: norm_matrix
  doc: '<#> (Normalize to total tags in gene expression matrix: not used)'
  type: boolean
  inputBinding:
    prefix: -normMatrix
- id: r_log
  doc: (quantile/variance normalization on reported genes using DESeq2 rlog funcition,
    needs R)
  type: boolean
  inputBinding:
    prefix: -rlog
- id: vst
  doc: (quantile/variance normalization on reported genes using DESeq2 vst function,
    needs R)
  type: boolean
  inputBinding:
    prefix: -vst
- id: quantile
  doc: (quantile normalization on reported genes)
  type: boolean
  inputBinding:
    prefix: -quantile
- id: upstream
  doc: '<#> (Distance upstream of each repeat to check for reads, default: 0 [off])'
  type: boolean
  inputBinding:
    prefix: -upstream
- id: downstream
  doc: '<#> (Distance downstream to each repeat to check for reads, default: 0 [off])'
  type: boolean
  inputBinding:
    prefix: -downstream
- id: l
  doc: '<#> (Only keep repeats with local enrichment greater than #, default: keep
    all)'
  type: boolean
  inputBinding:
    prefix: -L
- id: g_was_catalog
  doc: (Find overlapping GWAS Catalog file from UCSC)
  type: string
  inputBinding:
    prefix: -gwasCatalog
outputs: []
cwlVersion: v1.1
baseCommand:
- analyzeRepeats.pl
