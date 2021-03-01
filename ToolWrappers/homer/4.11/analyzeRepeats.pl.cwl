class: CommandLineTool
id: analyzeRepeats.pl.cwl
inputs:
- id: in_lone
  doc: (level one 'repeat name', i.e. AluSx3)
  type: long?
  inputBinding:
    prefix: -L1
- id: in_l_two
  doc: (level two 'repeat family', i.e. SINE)
  type: long?
  inputBinding:
    prefix: -L2
- id: in_l_three
  doc: (level three 'repeat class', i.e. Alu)
  type: long?
  inputBinding:
    prefix: -L3
- id: in_max_div
  doc: '(max divergence, i.e. -div 0.10, default: 1.0)'
  type: boolean?
  inputBinding:
    prefix: -maxdiv
- id: in_mind_iv
  doc: '(min divergence, default: 0)'
  type: boolean?
  inputBinding:
    prefix: -mindiv
- id: in_minlength
  doc: '<#> (only return repeats at lest this length, default: 0)'
  type: boolean?
  inputBinding:
    prefix: -minLength
- id: in_maxlength
  doc: '<#> (only return repeats less than % of full length, default: no max)'
  type: boolean?
  inputBinding:
    prefix: -maxLength
- id: in_minlength_p
  doc: '<#> (only return repeats at lest % of full length, default: 0%)'
  type: boolean?
  inputBinding:
    prefix: -minLengthP
- id: in_maxlength_p
  doc: '<#> (only return repeats less than % of full length, default: 100%)'
  type: boolean?
  inputBinding:
    prefix: -maxLengthP
- id: in_condense_l_two
  doc: (combine read counts for repeats for same L2 or L3 annotation)
  type: boolean?
  inputBinding:
    prefix: -condenseL2
- id: in_rms_k
  doc: (force filtering of repeats in case it thinks your file is for RNA)
  type: boolean?
  inputBinding:
    prefix: -rmsk
- id: in_five_p
  doc: (return peak files centered on 5' end of repeats)
  type: boolean?
  inputBinding:
    prefix: -5p
- id: in_three_p
  doc: (return peak files centered on 3' end of repeats)
  type: boolean?
  inputBinding:
    prefix: -3p
- id: in_og
  doc: (return positions relative to full length repeats)
  type: boolean?
  inputBinding:
    prefix: -og
- id: in_gff_three
  doc: (for GFF or GFF3 formated files - ideally use a GTF formated file, default)
  type: boolean?
  inputBinding:
    prefix: -gff3
- id: in_gid
  doc: (use gene_id instead of transcript_id when parsing GTF file)
  type: boolean?
  inputBinding:
    prefix: -gid
- id: in_list_experiment_directories
  doc: "[tag directory 2] ... (list of experiment directories to show\ntag counts\
    \ for) NOTE: -dfile <file> where file is a list of directories in first column"
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_count
  doc: "(regions to count reads in, default: genes)\nSpecify \"-pausingOptions\" to\
    \ get more options for pausing analysis for GRO-Seq data"
  type: long?
  inputBinding:
    prefix: -count
- id: in_strand
  doc: '<+|-|both> (count tags on indicated strand, default: both)'
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_pc
  doc: '<#> or -tbp <#> (maximum tags to count per position, default: 0=no limit)'
  type: boolean?
  inputBinding:
    prefix: -pc
- id: in_log
  doc: (output tag counts as randomized log2 values - for scatter plots)
  type: boolean?
  inputBinding:
    prefix: -log
- id: in_sqrt
  doc: (output tag counts as randomized sqrt values - for scatter plots)
  type: boolean?
  inputBinding:
    prefix: -sqrt
- id: in_condense_genes
  doc: (Only report one transcript from each gene locus with highest expression)
  type: boolean?
  inputBinding:
    prefix: -condenseGenes
- id: in_no_condensing
  doc: '(do not condense counts from entries will same ID, default: do condense)'
  type: boolean?
  inputBinding:
    prefix: -noCondensing
- id: in_no_condensing_parts
  doc: (i.e. report exons separately)
  type: boolean?
  inputBinding:
    prefix: -noCondensingParts
- id: in_min
  doc: '<#> (minimum expression value to print, default: none)'
  type: boolean?
  inputBinding:
    prefix: -min
- id: in_no_adj
  doc: (Don't normalize, report raw counts)
  type: string?
  inputBinding:
    prefix: -noadj
- id: in_rp_km
  doc: (Report results as fragments per kb per million mapped)
  type: boolean?
  inputBinding:
    prefix: -rpkm
- id: in_tpm
  doc: (Report transcripts per million)
  type: boolean?
  inputBinding:
    prefix: -tpm
- id: in_norm
  doc: '<#> (Normalize to total mapped tags: default 1e7)'
  type: boolean?
  inputBinding:
    prefix: -norm
- id: in_norm_matrix
  doc: '<#> (Normalize to total tags in gene expression matrix: not used)'
  type: boolean?
  inputBinding:
    prefix: -normMatrix
- id: in_r_log
  doc: (quantile/variance normalization on reported genes using DESeq2 rlog funcition,
    needs R)
  type: boolean?
  inputBinding:
    prefix: -rlog
- id: in_vst
  doc: (quantile/variance normalization on reported genes using DESeq2 vst function,
    needs R)
  type: boolean?
  inputBinding:
    prefix: -vst
- id: in_quantile
  doc: (quantile normalization on reported genes)
  type: boolean?
  inputBinding:
    prefix: -quantile
- id: in_upstream
  doc: '<#> (Distance upstream of each repeat to check for reads, default: 0 [off])'
  type: boolean?
  inputBinding:
    prefix: -upstream
- id: in_downstream
  doc: '<#> (Distance downstream to each repeat to check for reads, default: 0 [off])'
  type: boolean?
  inputBinding:
    prefix: -downstream
- id: in_only_keep_repeats
  doc: '<#> (Only keep repeats with local enrichment greater than #, default: keep
    all)'
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_g_was_catalog
  doc: (Find overlapping GWAS Catalog file from UCSC)
  type: File?
  inputBinding:
    prefix: -gwasCatalog
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- analyzeRepeats.pl
