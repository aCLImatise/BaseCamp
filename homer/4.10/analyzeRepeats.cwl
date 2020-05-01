#!/usr/bin/env cwl-runner

baseCommand:
- analyzeRepeats.pl
class: CommandLineTool
cwlVersion: v1.0
id: analyzerepeats.pl
inputs:
- doc: (level one 'repeat name', i.e. AluSx3)
  id: l1
  inputBinding:
    prefix: -L1
  type: string
- doc: (level two 'repeat family', i.e. SINE)
  id: l2
  inputBinding:
    prefix: -L2
  type: string
- doc: (level three 'repeat class', i.e. Alu)
  id: l3
  inputBinding:
    prefix: -L3
  type: string
- doc: '(max divergence, i.e. -div 0.10, default: 1.0)'
  id: max_div
  inputBinding:
    prefix: -maxdiv
  type: boolean
- doc: '(min divergence, default: 0)'
  id: mind_iv
  inputBinding:
    prefix: -mindiv
  type: boolean
- doc: '<#> (only return repeats at lest this length, default: 0)'
  id: minlength
  inputBinding:
    prefix: -minLength
  type: boolean
- doc: '<#> (only return repeats less than % of full length, default: no max)'
  id: maxlength
  inputBinding:
    prefix: -maxLength
  type: boolean
- doc: '<#> (only return repeats at lest % of full length, default: 0%)'
  id: minlength_p
  inputBinding:
    prefix: -minLengthP
  type: boolean
- doc: '<#> (only return repeats less than % of full length, default: 100%)'
  id: maxlength_p
  inputBinding:
    prefix: -maxLengthP
  type: boolean
- doc: (combine read counts for repeats for same L2 or L3 annotation)
  id: condense_l2
  inputBinding:
    prefix: -condenseL2
  type: boolean
- doc: (force filtering of repeats in case it thinks your file is for RNA)
  id: rms_k
  inputBinding:
    prefix: -rmsk
  type: boolean
- doc: (return positions relative to full length repeats)
  id: og
  inputBinding:
    prefix: -og
  type: boolean
- doc: /-gff3 (for GFF or GFF3 formated files - ideally use a GTF formated file, default)
  id: gff
  inputBinding:
    prefix: -gff
  type: boolean
- doc: (use gene_id instead of transcript_id when parsing GTF file)
  id: gid
  inputBinding:
    prefix: -gid
  type: boolean
- doc: '<genes|exons|introns|5utr|3utr|cds|pausing> (regions to count reads in, default:
    genes) Specify "-pausingOptions" to get more options for pausing analysis for
    GRO-Seq data'
  id: count
  inputBinding:
    prefix: -count
  type: boolean
- doc: '<+|-|both> (count tags on indicated strand, default: both)'
  id: strand
  inputBinding:
    prefix: -strand
  type: boolean
- doc: '<#> or -tbp <#> (maximum tags to count per position, default: 0=no limit)'
  id: pc
  inputBinding:
    prefix: -pc
  type: boolean
- doc: (output tag counts as randomized log2 values - for scatter plots)
  id: log
  inputBinding:
    prefix: -log
  type: boolean
- doc: (output tag counts as randomized sqrt values - for scatter plots)
  id: sqrt
  inputBinding:
    prefix: -sqrt
  type: boolean
- doc: (Only report one transcript from each gene locus with highest expression)
  id: condense_genes
  inputBinding:
    prefix: -condenseGenes
  type: boolean
- doc: '(do not condense counts from entries will same ID, default: do condense)'
  id: no_condensing
  inputBinding:
    prefix: -noCondensing
  type: boolean
- doc: (i.e. report exons separately)
  id: no_condensing_parts
  inputBinding:
    prefix: -noCondensingParts
  type: boolean
- doc: '<#> (minimum expression value to print, default: none)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: (Don't normalize, report raw counts)
  id: no_adj
  inputBinding:
    prefix: -noadj
  type: string
- doc: /-fpkm (Report results as fragments per kb per million mapped)
  id: rp_km
  inputBinding:
    prefix: -rpkm
  type: boolean
- doc: (Report transcripts per million)
  id: tpm
  inputBinding:
    prefix: -tpm
  type: boolean
- doc: '<#> (Normalize to total mapped tags: default 1e7)'
  id: norm
  inputBinding:
    prefix: -norm
  type: boolean
- doc: '<#> (Normalize to total tags in gene expression matrix: not used)'
  id: norm_matrix
  inputBinding:
    prefix: -normMatrix
  type: boolean
- doc: (quantile/variance normalization on reported genes using DESeq2 rlog funcition,
    needs R)
  id: r_log
  inputBinding:
    prefix: -rlog
  type: boolean
- doc: (quantile/variance normalization on reported genes using DESeq2 vst function,
    needs R)
  id: vst
  inputBinding:
    prefix: -vst
  type: boolean
- doc: (quantile normalization on reported genes)
  id: quantile
  inputBinding:
    prefix: -quantile
  type: boolean
- doc: '<#> (Distance upstream of each repeat to check for reads, default: 0 [off])'
  id: upstream
  inputBinding:
    prefix: -upstream
  type: boolean
- doc: '<#> (Distance downstream to each repeat to check for reads, default: 0 [off])'
  id: downstream
  inputBinding:
    prefix: -downstream
  type: boolean
- doc: '<#> (Only keep repeats with local enrichment greater than #, default: keep
    all)'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: (Find overlapping GWAS Catalog file from UCSC)
  id: g_was_catalog
  inputBinding:
    prefix: -gwasCatalog
  type: string
