class: CommandLineTool
id: annotatePeaks.pl.cwl
inputs:
- id: in_gtf
  doc: (Use -gff and -gff3 if appropriate, but GTF is better)
  type: File
  inputBinding:
    prefix: -gtf
- id: in_gid
  doc: (by default the GTF file is processed by transcript_id, use this option for
    gene_id)
  type: boolean
  inputBinding:
    prefix: -gid
- id: in_ann
  doc: (created by assignGenomeAnnotation, see website)
  type: File
  inputBinding:
    prefix: -ann
- id: in_list
  doc: "(subset of genes to perform analysis [unigene, gene id, accession,\nprobe,\
    \ etc.], default = all promoters)"
  type: string
  inputBinding:
    prefix: -list
- id: in_ctss
  doc: (should be centered on TSS)
  type: File
  inputBinding:
    prefix: -cTSS
- id: in_mask
  doc: (Masked repeats, can also add 'r' to end of genome name)
  type: boolean
  inputBinding:
    prefix: -mask
- id: in_list_motifs_find
  doc: '[motif file 2] ... (list of motifs to find in peaks)'
  type: long
  inputBinding:
    prefix: -m
- id: in_m_score
  doc: (reports the highest log-odds score within the peak)
  type: boolean
  inputBinding:
    prefix: -mscore
- id: in_n_motifs
  doc: (reports the number of motifs per peak)
  type: boolean
  inputBinding:
    prefix: -nmotifs
- id: in_mdist
  doc: (reports distance to closest motif)
  type: boolean
  inputBinding:
    prefix: -mdist
- id: in_m_fast_a
  doc: (reports sites in a fasta file - for building new motifs)
  type: File
  inputBinding:
    prefix: -mfasta
- id: in_fm
  doc: '[motif file 2] (list of motifs to filter from above)'
  type: long
  inputBinding:
    prefix: -fm
- id: in_rm_revo_pp
  doc: <#> (only count sites found within <#> on both strands once, i.e. palindromic)
  type: boolean
  inputBinding:
    prefix: -rmrevopp
- id: in_matrix
  doc: "(outputs a motif co-occurrence files:\nprefix.count.matrix.txt - number of\
    \ peaks with motif co-occurrence\nprefix.ratio.matrix.txt - ratio of observed\
    \ vs. expected  co-occurrence\nprefix.logPvalue.matrix.txt - co-occurrence enrichment\n\
    prefix.stats.txt - table of pair-wise motif co-occurrence statistics\nadditional\
    \ options:\n-matrixMinDist <#> (minimum distance between motif pairs - to avoid\
    \ overlap, default: 4)\n-matrixMaxDist <#> (maximum distance between motif pairs)"
  type: long
  inputBinding:
    prefix: -matrix
- id: in_m_bed
  doc: (Output motif positions to a BED file to load at UCSC (or -mpeak))
  type: File
  inputBinding:
    prefix: -mbed
- id: in_m_logic
  doc: (will output stats on common motif orientations)
  type: File
  inputBinding:
    prefix: -mlogic
- id: in_list_showtag_counts
  doc: "[tag directory 2] ... (list of experiment directories to show\ntag counts\
    \ for) NOTE: -dfile <file> where file is a list of directories in first column"
  type: Directory
  inputBinding:
    prefix: -d
- id: in_bed_graph
  doc: '[bedGraph file 2] ... (read coverage counts from bedGraph files)'
  type: long
  inputBinding:
    prefix: -bedGraph
- id: in_wig
  doc: '[wiggle file 2] ... (read coverage counts from wiggle files)'
  type: File
  inputBinding:
    prefix: -wig
- id: in_find_nearest_peaks
  doc: '[peak file 2] ... (to find nearest peaks)'
  type: File
  inputBinding:
    prefix: -p
- id: in_p_dist
  doc: report only distance (-pdist2 gives directional distance)
  type: long
  inputBinding:
    prefix: -pdist
- id: in_pcount
  doc: report number of peaks within region
  type: long
  inputBinding:
    prefix: -pcount
- id: in_vcf
  doc: (annotate peaks with genetic variation infomation, one col per individual)
  type: File
  inputBinding:
    prefix: -vcf
- id: in_edit_distance
  doc: '(Computes the # bp changes relative to reference)'
  type: boolean
  inputBinding:
    prefix: -editDistance
- id: in_individuals
  doc: '[name2] ... (restrict analysis to these individuals)'
  type: long
  inputBinding:
    prefix: -individuals
- id: in_gene
  doc: "... (Adds additional data to result based on the closest gene.\nThis is useful\
    \ for adding gene expression data.  The file must have a header,\nand the first\
    \ column must be a GeneID, Accession number, etc.  If the peak\ncannot be mapped\
    \ to data in the file then the entry will be left empty."
  type: File
  inputBinding:
    prefix: -gene
- id: in_go
  doc: (perform GO analysis using genes near peaks)
  type: Directory
  inputBinding:
    prefix: -go
- id: in_genome_ontology
  doc: (perform genomeOntology analysis on peaks)
  type: Directory
  inputBinding:
    prefix: -genomeOntology
- id: in_g_size
  doc: '<#> (Genome size for genomeOntology analysis, default: 2e9)'
  type: boolean
  inputBinding:
    prefix: -gsize
- id: in_nuc
  doc: "(calculated mononucleotide frequencies at each position,\nWill report by default\
    \ if extracting sequence for other purposes like motifs)"
  type: boolean
  inputBinding:
    prefix: -nuc
- id: in_di
  doc: (calculated dinucleotide frequencies at each position)
  type: boolean
  inputBinding:
    prefix: -di
- id: in_hist_norm
  doc: "<#> (normalize the total tag count for each region to 1, where <#> is the\n\
    minimum tag total per region - use to avoid tag spikes from low coverage"
  type: boolean
  inputBinding:
    prefix: -histNorm
- id: in_g_hist
  doc: (outputs profiles for each gene, for peak shape clustering)
  type: boolean
  inputBinding:
    prefix: -ghist
- id: in_rm
  doc: '<#> (remove occurrences of same motif that occur within # bp)'
  type: boolean
  inputBinding:
    prefix: -rm
- id: in_center
  doc: "(This will re-center peaks on the specified motif, or remove peak\nif there\
    \ is no motif in the peak.  ONLY recentering will be performed, and all other\n\
    options will be ignored.  This will output a new peak file that can then be reanalyzed\n\
    to reveal fine-grain structure in peaks (It is advised to use -size < 200) with\
    \ this\nto keep peaks from moving too far (-mirror flips the position)"
  type: File
  inputBinding:
    prefix: -center
- id: in_multi
  doc: (returns genomic positions of all sites instead of just the closest to center)
  type: boolean
  inputBinding:
    prefix: -multi
- id: in_cmp_genome
  doc: '[genome2] (Genomes to compare for sequence/motifs)'
  type: long
  inputBinding:
    prefix: -cmpGenome
- id: in_cmp_lift_over
  doc: '[genome2] (Genomes to compare for sequence/motifs)'
  type: long
  inputBinding:
    prefix: -cmpLiftover
- id: in_fp_km
  doc: (normalize read counts to million reads or fragments per kilobase mapped)
  type: boolean
  inputBinding:
    prefix: -fpkm
- id: in_raw
  doc: (do not adjust the tag counts based on total tags sequenced, -noadj works too)
  type: boolean
  inputBinding:
    prefix: -raw
- id: in_norm
  doc: <#> (normalize tags to this tag count, default=1e7, 0=average tag count in
    all directories)
  type: boolean
  inputBinding:
    prefix: -norm
- id: in_norm_length
  doc: '<#> (Fragment length to normlize to for experiments with different lens, def:
    100)'
  type: boolean
  inputBinding:
    prefix: -normLength
- id: in_log
  doc: (output tag counts as log2(x+1+rand) values - for scatter plots)
  type: boolean
  inputBinding:
    prefix: -log
- id: in_sqrt
  doc: (output tag counts as sqrt(x+rand) values - for scatter plots)
  type: boolean
  inputBinding:
    prefix: -sqrt
- id: in_ratio
  doc: (process tag values as ratios - i.e. chip-seq, or mCpG/CpG)
  type: boolean
  inputBinding:
    prefix: -ratio
- id: in_r_log
  doc: (quantile/variance normalization on reported genes using DESeq2 rlog funcition,
    needs R)
  type: boolean
  inputBinding:
    prefix: -rlog
- id: in_vst
  doc: (quantile/variance normalization on reported genes using DESeq2 vst function,
    needs R)
  type: boolean
  inputBinding:
    prefix: -vst
- id: in_len
  doc: <#> / -fragLength <#> (Fragment length, default=auto, might want to set to
    1 for 5'RNA)
  type: boolean
  inputBinding:
    prefix: -len
- id: in_strand
  doc: '<+|-|both> (Count tags on specific strands relative to peak, default: both)'
  type: boolean
  inputBinding:
    prefix: -strand
- id: in_pc
  doc: <#> (maximum number of tags to count per bp, default=0 [no maximum], -tbp <#>
    works too)
  type: boolean
  inputBinding:
    prefix: -pc
- id: in_cpg
  doc: (Calculate CpG/GC content)
  type: boolean
  inputBinding:
    prefix: -CpG
- id: in_nfr
  doc: (report nuclesome free region scores instead of tag counts, also -nfrSize <#>)
  type: boolean
  inputBinding:
    prefix: -nfr
- id: in_norev_opp
  doc: (do not search for motifs on the opposite strand [works with -center too])
  type: boolean
  inputBinding:
    prefix: -norevopp
- id: in_g_was_catalog
  doc: (list overlapping GWAS risk SNPs)
  type: File
  inputBinding:
    prefix: -gwasCatalog
- id: in_map
  doc: (mapping between peak IDs and promoter IDs, overrides closest assignment)
  type: File
  inputBinding:
    prefix: -map
- id: in_no_gene
  doc: (skip genome annotation step, skip TSS annotation)
  type: boolean
  inputBinding:
    prefix: -nogene
- id: in_homer_one_slash_homer_two
  doc: (by default, the new version of homer [-homer2] is used for finding motifs)
  type: boolean
  inputBinding:
    prefix: -homer1/-homer2
- id: in_cpu
  doc: <#> (Number of processors to use when possible - only some parts utilize multiple
    cores)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_no_blanks
  doc: (remove peaks/rows with missing data)
  type: boolean
  inputBinding:
    prefix: -noblanks
- id: in_peak_file_vertical_line_tss
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_genome_version
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_additional
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_m_bed
  doc: (Output motif positions to a BED file to load at UCSC (or -mpeak))
  type: File
  outputBinding:
    glob: $(inputs.in_m_bed)
- id: out_go
  doc: (perform GO analysis using genes near peaks)
  type: Directory
  outputBinding:
    glob: $(inputs.in_go)
- id: out_genome_ontology
  doc: (perform genomeOntology analysis on peaks)
  type: Directory
  outputBinding:
    glob: $(inputs.in_genome_ontology)
cwlVersion: v1.1
baseCommand:
- annotatePeaks.pl
