#!/usr/bin/env cwl-runner

baseCommand:
- findcsRNATSS.pl
class: CommandLineTool
cwlVersion: v1.0
id: findcsrnatss.pl
inputs:
- doc: (Experiment to use as IgG/Input/Control)
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: '<#> (Peak size, default: auto)'
  id: size
  inputBinding:
    prefix: -size
  type: boolean
- doc: '<#> (minimum distance between peaks, default: peak size x2)'
  id: mind_ist
  inputBinding:
    prefix: -minDist
  type: boolean
- doc: '<#> (Set effective mappable genome size, default: 2e9)'
  id: g_size
  inputBinding:
    prefix: -gsize
  type: boolean
- doc: '<#|auto> (Approximate fragment length, default: auto)'
  id: frag_length
  inputBinding:
    prefix: -fragLength
  type: boolean
- doc: '<#|auto> (Approximate fragment length of input tags, default: auto)'
  id: input_frag_length
  inputBinding:
    prefix: -inputFragLength
  type: boolean
- doc: '<#> (Maximum tags per bp to count, 0 = no limit, default: auto)'
  id: tbp
  inputBinding:
    prefix: -tbp
  type: boolean
- doc: '<#> (Maximum tags per bp to count in input, 0 = no limit, default: auto)'
  id: input_tbp
  inputBinding:
    prefix: -inputtbp
  type: boolean
- doc: <both|separate> (find peaks using tags on both strands or separate, default:both)
  id: strand
  inputBinding:
    prefix: -strand
  type: boolean
- doc: '# (Tag count to normalize to, default 10000000)'
  id: norm
  inputBinding:
    prefix: -norm
  type: boolean
- doc: "(extends start/stop coordinates to cover full region considered \"enriched\"\
    ) -regionRes <#> (number of fractions peaks are divided in when extending 'regions',\
    \ def: 4)"
  id: region
  inputBinding:
    prefix: -region
  type: boolean
- doc: (Centers peaks on maximum tag overlap and calculates focus ratios)
  id: center
  inputBinding:
    prefix: -center
  type: boolean
- doc: (Centers peaks on most likely nucleosome free region [works best with mnase
    data]) (-center and -nfr can be performed later with "getPeakTags"
  id: nfr
  inputBinding:
    prefix: -nfr
  type: boolean
- doc: '<#> (fold enrichment over input tag count, default: 4.0)'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: '<#> (poisson p-value threshold relative to input tag count, default: 0.0001)'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: '<#> (fold enrichment over local tag count, default: 4.0)'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: '<#> (poisson p-value threshold relative to local tag count, default: 0.0001)'
  id: lp
  inputBinding:
    prefix: -LP
  type: boolean
- doc: '<#> (fold enrichment limit of expected unique tag positions, default: 2.0)'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: '<#> (region to check for local tag enrichment, default: 10000)'
  id: local_size
  inputBinding:
    prefix: -localSize
  type: boolean
- doc: '<#> (Size of region to search for control tags, default: 2x peak size)'
  id: input_size
  inputBinding:
    prefix: -inputSize
  type: boolean
- doc: <#> (False discovery rate, default = 0.001)
  id: fdr
  inputBinding:
    prefix: -fdr
  type: boolean
- doc: '<#> (Set poisson p-value cutoff, default: uses fdr)'
  id: poisson
  inputBinding:
    prefix: -poisson
  type: boolean
- doc: '<#> (Set # of tags to define a peak, default: 25)'
  id: tag_threshold
  inputBinding:
    prefix: -tagThreshold
  type: boolean
- doc: '<#> (Set # of normalized tags to define a peak, by default uses 1e7 for norm)'
  id: n_tag_threshold
  inputBinding:
    prefix: -ntagThreshold
  type: boolean
- doc: '<#> (Absolute minimum tags per peak, default: expected tags per peak)'
  id: min_tag_threshold
  inputBinding:
    prefix: -minTagThreshold
  type: boolean
- doc: '<#> (Slope threshold to identify super vs. typical enh., default: 1.00)'
  id: super_slope
  inputBinding:
    prefix: -superSlope
  type: boolean
- doc: '<#> (moving window/number of peaks to use to calculate slope, default: 10)'
  id: super_window
  inputBinding:
    prefix: -superWindow
  type: boolean
- doc: '(Output typical enhancers to this file, default: not used)'
  id: typical
  inputBinding:
    prefix: -typical
  type: File
- doc: (initial peaks to use for super enhancer merging/scoring)
  id: input_peaks
  inputBinding:
    prefix: -inputPeaks
  type: File
- doc: (regions to exclude from analysis, i.e. TSS regions for H3K27ac)
  id: exclude_peaks
  inputBinding:
    prefix: -excludePeaks
  type: File
- doc: '/ -methylC (find unmethylated/methylated regions, default: -unmethyC)'
  id: un_methyl_c
  inputBinding:
    prefix: -unmethylC
  type: boolean
- doc: '<#> (methylation threshold of regions, default: avg methylation/2)'
  id: mc_thresh
  inputBinding:
    prefix: -mCthresh
  type: boolean
- doc: '<#> (Minimum number of cytosines per methylation peak, default: 6)'
  id: minn_umc
  inputBinding:
    prefix: -minNumC
  type: boolean
- doc: (Use -gff and -gff3 if appropriate, but GTF is better)
  id: gtf
  inputBinding:
    prefix: -gtf
  type: string
- doc: (by default the GTF file is processed by transcript_id, use this option for
    gene_id)
  id: gid
  inputBinding:
    prefix: -gid
  type: boolean
- doc: (created by assignGenomeAnnotation, see website)
  id: ann
  inputBinding:
    prefix: -ann
  type: string
- doc: (should be centered on TSS)
  id: ctss
  inputBinding:
    prefix: -cTSS
  type: string
- doc: '<#> (minimum distance between motif pairs - to avoid overlap, default: 4)'
  id: matrix_mind_ist
  inputBinding:
    prefix: -matrixMinDist
  type: boolean
- doc: <#> (maximum distance between motif pairs)
  id: matrix_max_dist
  inputBinding:
    prefix: -matrixMaxDist
  type: boolean
- doc: (Output motif positions to a BED file to load at UCSC (or -mpeak))
  id: m_bed
  inputBinding:
    prefix: -mbed
  type: File
- doc: (will output stats on common motif orientations)
  id: m_logic
  inputBinding:
    prefix: -mlogic
  type: File
- doc: '[tag directory 2] ... (list of experiment directories to show'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: (perform GO analysis using genes near peaks)
  id: go
  inputBinding:
    prefix: -go
  type: string
- doc: (perform genomeOntology analysis on peaks)
  id: genome_ontology
  inputBinding:
    prefix: -genomeOntology
  type: string
- doc: '<#> (Genome size for genomeOntology analysis, default: 2e9)'
  id: g_size
  inputBinding:
    prefix: -gsize
  type: boolean
- doc: (outputs profiles for each gene, for peak shape clustering)
  id: g_hist
  inputBinding:
    prefix: -ghist
  type: boolean
- doc: '<#> (remove occurrences of same motif that occur within # bp)'
  id: rm
  inputBinding:
    prefix: -rm
  type: boolean
- doc: (returns genomic positions of all sites instead of just the closest to center)
  id: multi
  inputBinding:
    prefix: -multi
  type: boolean
- doc: '[genome2] (Genomes to compare for sequence/motifs)'
  id: cmp_genome
  inputBinding:
    prefix: -cmpGenome
  type: string
- doc: '[genome2] (Genomes to compare for sequence/motifs)'
  id: cmp_lift_over
  inputBinding:
    prefix: -cmpLiftover
  type: string
- doc: (normalize read counts to million reads or fragments per kilobase mapped)
  id: fp_km
  inputBinding:
    prefix: -fpkm
  type: boolean
- doc: (do not adjust the tag counts based on total tags sequenced, -noadj works too)
  id: raw
  inputBinding:
    prefix: -raw
  type: boolean
- doc: <#> (normalize tags to this tag count, default=1e7, 0=average tag count in
    all directories)
  id: norm
  inputBinding:
    prefix: -norm
  type: boolean
- doc: '<#> (Fragment length to normlize to for experiments with different lens, def:
    100)'
  id: norm_length
  inputBinding:
    prefix: -normLength
  type: boolean
- doc: (output tag counts as log2(x+1+rand) values - for scatter plots)
  id: log
  inputBinding:
    prefix: -log
  type: boolean
- doc: (output tag counts as sqrt(x+rand) values - for scatter plots)
  id: sqrt
  inputBinding:
    prefix: -sqrt
  type: boolean
- doc: (process tag values as ratios - i.e. chip-seq, or mCpG/CpG)
  id: ratio
  inputBinding:
    prefix: -ratio
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
- doc: <#> / -fragLength <#> (Fragment length, default=auto, might want to set to
    1 for 5'RNA)
  id: len
  inputBinding:
    prefix: -len
  type: boolean
- doc: '<#> (Peak size[from center of peak], default=inferred from peak file) -size
    #,# (i.e. -size -10,50 count tags from -10 bp to +50 bp from center) -size "given"
    (count tags etc. using the actual regions - for variable length regions)'
  id: size
  inputBinding:
    prefix: -size
  type: boolean
- doc: '<+|-|both> (Count tags on specific strands relative to peak, default: both)'
  id: strand
  inputBinding:
    prefix: -strand
  type: boolean
- doc: <#> (maximum number of tags to count per bp, default=0 [no maximum], -tbp <#>
    works too)
  id: pc
  inputBinding:
    prefix: -pc
  type: boolean
- doc: (Calculate CpG/GC content)
  id: cpg
  inputBinding:
    prefix: -CpG
  type: boolean
- doc: (report nuclesome free region scores instead of tag counts, also -nfrSize <#>)
  id: nfr
  inputBinding:
    prefix: -nfr
  type: boolean
- doc: (do not search for motifs on the opposite strand [works with -center too])
  id: norev_opp
  inputBinding:
    prefix: -norevopp
  type: boolean
- doc: (list overlapping GWAS risk SNPs)
  id: g_was_catalog
  inputBinding:
    prefix: -gwasCatalog
  type: string
- doc: (only report distance to nearest peak using -p, not peak name)
  id: p_dist
  inputBinding:
    prefix: -pdist
  type: boolean
- doc: (mapping between peak IDs and promoter IDs, overrides closest assignment)
  id: map
  inputBinding:
    prefix: -map
  type: string
- doc: (skip genome annotation step, skip TSS annotation)
  id: no_gene
  inputBinding:
    prefix: -nogene
  type: boolean
- doc: /-homer2 (by default, the new version of homer [-homer2] is used for finding
    motifs)
  id: home_r1
  inputBinding:
    prefix: -homer1
  type: boolean
- doc: <#> (Number of processors to use when possible - only some parts utilize multiple
    cores)
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: (remove peaks/rows with missing data)
  id: no_blanks
  inputBinding:
    prefix: -noblanks
  type: boolean
- doc: (Use -gff and -gff3 if appropriate, but GTF is better)
  id: gtf
  inputBinding:
    prefix: -gtf
  type: string
- doc: (by default the GTF file is processed by transcript_id, use this option for
    gene_id)
  id: gid
  inputBinding:
    prefix: -gid
  type: boolean
- doc: (created by assignGenomeAnnotation, see website)
  id: ann
  inputBinding:
    prefix: -ann
  type: string
- doc: (should be centered on TSS)
  id: ctss
  inputBinding:
    prefix: -cTSS
  type: string
- doc: '<#> (minimum distance between motif pairs - to avoid overlap, default: 4)'
  id: matrix_mind_ist
  inputBinding:
    prefix: -matrixMinDist
  type: boolean
- doc: <#> (maximum distance between motif pairs)
  id: matrix_max_dist
  inputBinding:
    prefix: -matrixMaxDist
  type: boolean
- doc: (Output motif positions to a BED file to load at UCSC (or -mpeak))
  id: m_bed
  inputBinding:
    prefix: -mbed
  type: File
- doc: (will output stats on common motif orientations)
  id: m_logic
  inputBinding:
    prefix: -mlogic
  type: File
- doc: '[tag directory 2] ... (list of experiment directories to show'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: (perform GO analysis using genes near peaks)
  id: go
  inputBinding:
    prefix: -go
  type: string
- doc: (perform genomeOntology analysis on peaks)
  id: genome_ontology
  inputBinding:
    prefix: -genomeOntology
  type: string
- doc: '<#> (Genome size for genomeOntology analysis, default: 2e9)'
  id: g_size
  inputBinding:
    prefix: -gsize
  type: boolean
- doc: (outputs profiles for each gene, for peak shape clustering)
  id: g_hist
  inputBinding:
    prefix: -ghist
  type: boolean
- doc: '<#> (remove occurrences of same motif that occur within # bp)'
  id: rm
  inputBinding:
    prefix: -rm
  type: boolean
- doc: (returns genomic positions of all sites instead of just the closest to center)
  id: multi
  inputBinding:
    prefix: -multi
  type: boolean
- doc: '[genome2] (Genomes to compare for sequence/motifs)'
  id: cmp_genome
  inputBinding:
    prefix: -cmpGenome
  type: string
- doc: '[genome2] (Genomes to compare for sequence/motifs)'
  id: cmp_lift_over
  inputBinding:
    prefix: -cmpLiftover
  type: string
- doc: (normalize read counts to million reads or fragments per kilobase mapped)
  id: fp_km
  inputBinding:
    prefix: -fpkm
  type: boolean
- doc: (do not adjust the tag counts based on total tags sequenced, -noadj works too)
  id: raw
  inputBinding:
    prefix: -raw
  type: boolean
- doc: <#> (normalize tags to this tag count, default=1e7, 0=average tag count in
    all directories)
  id: norm
  inputBinding:
    prefix: -norm
  type: boolean
- doc: '<#> (Fragment length to normlize to for experiments with different lens, def:
    100)'
  id: norm_length
  inputBinding:
    prefix: -normLength
  type: boolean
- doc: (output tag counts as log2(x+1+rand) values - for scatter plots)
  id: log
  inputBinding:
    prefix: -log
  type: boolean
- doc: (output tag counts as sqrt(x+rand) values - for scatter plots)
  id: sqrt
  inputBinding:
    prefix: -sqrt
  type: boolean
- doc: (process tag values as ratios - i.e. chip-seq, or mCpG/CpG)
  id: ratio
  inputBinding:
    prefix: -ratio
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
- doc: <#> / -fragLength <#> (Fragment length, default=auto, might want to set to
    1 for 5'RNA)
  id: len
  inputBinding:
    prefix: -len
  type: boolean
- doc: '<#> (Peak size[from center of peak], default=inferred from peak file) -size
    #,# (i.e. -size -10,50 count tags from -10 bp to +50 bp from center) -size "given"
    (count tags etc. using the actual regions - for variable length regions)'
  id: size
  inputBinding:
    prefix: -size
  type: boolean
- doc: '<+|-|both> (Count tags on specific strands relative to peak, default: both)'
  id: strand
  inputBinding:
    prefix: -strand
  type: boolean
- doc: <#> (maximum number of tags to count per bp, default=0 [no maximum], -tbp <#>
    works too)
  id: pc
  inputBinding:
    prefix: -pc
  type: boolean
- doc: (Calculate CpG/GC content)
  id: cpg
  inputBinding:
    prefix: -CpG
  type: boolean
- doc: (report nuclesome free region scores instead of tag counts, also -nfrSize <#>)
  id: nfr
  inputBinding:
    prefix: -nfr
  type: boolean
- doc: (do not search for motifs on the opposite strand [works with -center too])
  id: norev_opp
  inputBinding:
    prefix: -norevopp
  type: boolean
- doc: (list overlapping GWAS risk SNPs)
  id: g_was_catalog
  inputBinding:
    prefix: -gwasCatalog
  type: string
- doc: (only report distance to nearest peak using -p, not peak name)
  id: p_dist
  inputBinding:
    prefix: -pdist
  type: boolean
- doc: (mapping between peak IDs and promoter IDs, overrides closest assignment)
  id: map
  inputBinding:
    prefix: -map
  type: string
- doc: (skip genome annotation step, skip TSS annotation)
  id: no_gene
  inputBinding:
    prefix: -nogene
  type: boolean
- doc: /-homer2 (by default, the new version of homer [-homer2] is used for finding
    motifs)
  id: home_r1
  inputBinding:
    prefix: -homer1
  type: boolean
- doc: <#> (Number of processors to use when possible - only some parts utilize multiple
    cores)
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: (remove peaks/rows with missing data)
  id: no_blanks
  inputBinding:
    prefix: -noblanks
  type: boolean
