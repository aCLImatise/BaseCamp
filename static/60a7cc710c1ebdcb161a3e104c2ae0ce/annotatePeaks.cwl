class: CommandLineTool
id: annotatePeaks.pl.cwl
inputs:
- id: gtf
  doc: (Use -gff and -gff3 if appropriate, but GTF is better)
  type: string
  inputBinding:
    prefix: -gtf
- id: gid
  doc: (by default the GTF file is processed by transcript_id, use this option for
    gene_id)
  type: boolean
  inputBinding:
    prefix: -gid
- id: ann
  doc: (created by assignGenomeAnnotation, see website)
  type: string
  inputBinding:
    prefix: -ann
- id: ctss
  doc: (should be centered on TSS)
  type: string
  inputBinding:
    prefix: -cTSS
- id: matrix_mind_ist
  doc: '<#> (minimum distance between motif pairs - to avoid overlap, default: 4)'
  type: boolean
  inputBinding:
    prefix: -matrixMinDist
- id: matrix_max_dist
  doc: <#> (maximum distance between motif pairs)
  type: boolean
  inputBinding:
    prefix: -matrixMaxDist
- id: m_bed
  doc: (Output motif positions to a BED file to load at UCSC (or -mpeak))
  type: File
  inputBinding:
    prefix: -mbed
- id: m_logic
  doc: (will output stats on common motif orientations)
  type: File
  inputBinding:
    prefix: -mlogic
- id: d
  doc: '[tag directory 2] ... (list of experiment directories to show'
  type: string
  inputBinding:
    prefix: -d
- id: go
  doc: (perform GO analysis using genes near peaks)
  type: string
  inputBinding:
    prefix: -go
- id: genome_ontology
  doc: (perform genomeOntology analysis on peaks)
  type: string
  inputBinding:
    prefix: -genomeOntology
- id: g_size
  doc: '<#> (Genome size for genomeOntology analysis, default: 2e9)'
  type: boolean
  inputBinding:
    prefix: -gsize
- id: g_hist
  doc: (outputs profiles for each gene, for peak shape clustering)
  type: boolean
  inputBinding:
    prefix: -ghist
- id: rm
  doc: '<#> (remove occurrences of same motif that occur within # bp)'
  type: boolean
  inputBinding:
    prefix: -rm
- id: multi
  doc: (returns genomic positions of all sites instead of just the closest to center)
  type: boolean
  inputBinding:
    prefix: -multi
- id: cmp_genome
  doc: '[genome2] (Genomes to compare for sequence/motifs)'
  type: string
  inputBinding:
    prefix: -cmpGenome
- id: cmp_lift_over
  doc: '[genome2] (Genomes to compare for sequence/motifs)'
  type: string
  inputBinding:
    prefix: -cmpLiftover
- id: fp_km
  doc: (normalize read counts to million reads or fragments per kilobase mapped)
  type: boolean
  inputBinding:
    prefix: -fpkm
- id: raw
  doc: (do not adjust the tag counts based on total tags sequenced, -noadj works too)
  type: boolean
  inputBinding:
    prefix: -raw
- id: norm
  doc: <#> (normalize tags to this tag count, default=1e7, 0=average tag count in
    all directories)
  type: boolean
  inputBinding:
    prefix: -norm
- id: norm_length
  doc: '<#> (Fragment length to normlize to for experiments with different lens, def:
    100)'
  type: boolean
  inputBinding:
    prefix: -normLength
- id: log
  doc: (output tag counts as log2(x+1+rand) values - for scatter plots)
  type: boolean
  inputBinding:
    prefix: -log
- id: sqrt
  doc: (output tag counts as sqrt(x+rand) values - for scatter plots)
  type: boolean
  inputBinding:
    prefix: -sqrt
- id: ratio
  doc: (process tag values as ratios - i.e. chip-seq, or mCpG/CpG)
  type: boolean
  inputBinding:
    prefix: -ratio
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
- id: len
  doc: <#> / -fragLength <#> (Fragment length, default=auto, might want to set to
    1 for 5'RNA)
  type: boolean
  inputBinding:
    prefix: -len
- id: size
  doc: '<#> (Peak size[from center of peak], default=inferred from peak file) -size
    #,# (i.e. -size -10,50 count tags from -10 bp to +50 bp from center) -size "given"
    (count tags etc. using the actual regions - for variable length regions)'
  type: boolean
  inputBinding:
    prefix: -size
- id: strand
  doc: '<+|-|both> (Count tags on specific strands relative to peak, default: both)'
  type: boolean
  inputBinding:
    prefix: -strand
- id: pc
  doc: <#> (maximum number of tags to count per bp, default=0 [no maximum], -tbp <#>
    works too)
  type: boolean
  inputBinding:
    prefix: -pc
- id: cpg
  doc: (Calculate CpG/GC content)
  type: boolean
  inputBinding:
    prefix: -CpG
- id: nfr
  doc: (report nuclesome free region scores instead of tag counts, also -nfrSize <#>)
  type: boolean
  inputBinding:
    prefix: -nfr
- id: norev_opp
  doc: (do not search for motifs on the opposite strand [works with -center too])
  type: boolean
  inputBinding:
    prefix: -norevopp
- id: g_was_catalog
  doc: (list overlapping GWAS risk SNPs)
  type: string
  inputBinding:
    prefix: -gwasCatalog
- id: p_dist
  doc: (only report distance to nearest peak using -p, not peak name)
  type: boolean
  inputBinding:
    prefix: -pdist
- id: map
  doc: (mapping between peak IDs and promoter IDs, overrides closest assignment)
  type: string
  inputBinding:
    prefix: -map
- id: no_gene
  doc: (skip genome annotation step, skip TSS annotation)
  type: boolean
  inputBinding:
    prefix: -nogene
- id: home_r1
  doc: /-homer2 (by default, the new version of homer [-homer2] is used for finding
    motifs)
  type: boolean
  inputBinding:
    prefix: -homer1
- id: cpu
  doc: <#> (Number of processors to use when possible - only some parts utilize multiple
    cores)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: no_blanks
  doc: (remove peaks/rows with missing data)
  type: boolean
  inputBinding:
    prefix: -noblanks
outputs: []
cwlVersion: v1.1
baseCommand:
- annotatePeaks.pl
