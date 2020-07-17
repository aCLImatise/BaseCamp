version 1.0

task AnnotatePeaks.pl {
  input {
    String? gtf
    Boolean? gid
    String? ann
    String? ctss
    Boolean? matrix_mind_ist
    Boolean? matrix_max_dist
    File? m_bed
    File? m_logic
    String? list_experiment_show
    String? go
    String? genome_ontology
    Boolean? g_size
    Boolean? g_hist
    Boolean? rm
    Boolean? multi
    String? cmp_genome
    String? cmp_lift_over
    Boolean? fp_km
    Boolean? raw
    Boolean? norm
    Boolean? norm_length
    Boolean? log
    Boolean? sqrt
    Boolean? ratio
    Boolean? r_log
    Boolean? vst
    Boolean? len
    Boolean? size
    Boolean? strand
    Boolean? pc
    Boolean? cpg
    Boolean? nfr
    Boolean? norev_opp
    String? g_was_catalog
    Boolean? p_dist
    String? mapping_peak_ids
    Boolean? no_gene
    Boolean? homer_one_slash_homer_two
    Boolean? cpu
    Boolean? no_blanks
    String peak_file_vertical_line_tss
    String genome_version
    String? additional
    String? options_dot_dot_dot
  }
  command <<<
    annotatePeaks.pl \
      ~{peak_file_vertical_line_tss} \
      ~{genome_version} \
      ~{additional} \
      ~{options_dot_dot_dot} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""} \
      ~{true="-gid" false="" gid} \
      ~{if defined(ann) then ("-ann " +  '"' + ann + '"') else ""} \
      ~{if defined(ctss) then ("-cTSS " +  '"' + ctss + '"') else ""} \
      ~{true="-matrixMinDist" false="" matrix_mind_ist} \
      ~{true="-matrixMaxDist" false="" matrix_max_dist} \
      ~{if defined(m_bed) then ("-mbed " +  '"' + m_bed + '"') else ""} \
      ~{if defined(m_logic) then ("-mlogic " +  '"' + m_logic + '"') else ""} \
      ~{if defined(list_experiment_show) then ("-d " +  '"' + list_experiment_show + '"') else ""} \
      ~{if defined(go) then ("-go " +  '"' + go + '"') else ""} \
      ~{if defined(genome_ontology) then ("-genomeOntology " +  '"' + genome_ontology + '"') else ""} \
      ~{true="-gsize" false="" g_size} \
      ~{true="-ghist" false="" g_hist} \
      ~{true="-rm" false="" rm} \
      ~{true="-multi" false="" multi} \
      ~{if defined(cmp_genome) then ("-cmpGenome " +  '"' + cmp_genome + '"') else ""} \
      ~{if defined(cmp_lift_over) then ("-cmpLiftover " +  '"' + cmp_lift_over + '"') else ""} \
      ~{true="-fpkm" false="" fp_km} \
      ~{true="-raw" false="" raw} \
      ~{true="-norm" false="" norm} \
      ~{true="-normLength" false="" norm_length} \
      ~{true="-log" false="" log} \
      ~{true="-sqrt" false="" sqrt} \
      ~{true="-ratio" false="" ratio} \
      ~{true="-rlog" false="" r_log} \
      ~{true="-vst" false="" vst} \
      ~{true="-len" false="" len} \
      ~{true="-size" false="" size} \
      ~{true="-strand" false="" strand} \
      ~{true="-pc" false="" pc} \
      ~{true="-CpG" false="" cpg} \
      ~{true="-nfr" false="" nfr} \
      ~{true="-norevopp" false="" norev_opp} \
      ~{if defined(g_was_catalog) then ("-gwasCatalog " +  '"' + g_was_catalog + '"') else ""} \
      ~{true="-pdist" false="" p_dist} \
      ~{if defined(mapping_peak_ids) then ("-map " +  '"' + mapping_peak_ids + '"') else ""} \
      ~{true="-nogene" false="" no_gene} \
      ~{true="-homer1/-homer2" false="" homer_one_slash_homer_two} \
      ~{true="-cpu" false="" cpu} \
      ~{true="-noblanks" false="" no_blanks}
  >>>
  parameter_meta {
    gtf: "(Use -gff and -gff3 if appropriate, but GTF is better)"
    gid: "(by default the GTF file is processed by transcript_id, use this option for gene_id)"
    ann: "(created by assignGenomeAnnotation, see website)"
    ctss: "(should be centered on TSS)"
    matrix_mind_ist: "<#> (minimum distance between motif pairs - to avoid overlap, default: 4)"
    matrix_max_dist: "<#> (maximum distance between motif pairs)"
    m_bed: "(Output motif positions to a BED file to load at UCSC (or -mpeak))"
    m_logic: "(will output stats on common motif orientations)"
    list_experiment_show: "[tag directory 2] ... (list of experiment directories to show"
    go: "(perform GO analysis using genes near peaks)"
    genome_ontology: "(perform genomeOntology analysis on peaks)"
    g_size: "<#> (Genome size for genomeOntology analysis, default: 2e9)"
    g_hist: "(outputs profiles for each gene, for peak shape clustering)"
    rm: "<#> (remove occurrences of same motif that occur within # bp)"
    multi: "(returns genomic positions of all sites instead of just the closest to center)"
    cmp_genome: "[genome2] (Genomes to compare for sequence/motifs)"
    cmp_lift_over: "[genome2] (Genomes to compare for sequence/motifs)"
    fp_km: "(normalize read counts to million reads or fragments per kilobase mapped)"
    raw: "(do not adjust the tag counts based on total tags sequenced, -noadj works too)"
    norm: "<#> (normalize tags to this tag count, default=1e7, 0=average tag count in all directories)"
    norm_length: "<#> (Fragment length to normlize to for experiments with different lens, def: 100)"
    log: "(output tag counts as log2(x+1+rand) values - for scatter plots)"
    sqrt: "(output tag counts as sqrt(x+rand) values - for scatter plots)"
    ratio: "(process tag values as ratios - i.e. chip-seq, or mCpG/CpG)"
    r_log: "(quantile/variance normalization on reported genes using DESeq2 rlog funcition, needs R)"
    vst: "(quantile/variance normalization on reported genes using DESeq2 vst function, needs R)"
    len: "<#> / -fragLength <#> (Fragment length, default=auto, might want to set to 1 for 5'RNA)"
    size: "<#> (Peak size[from center of peak], default=inferred from peak file) -size #,# (i.e. -size -10,50 count tags from -10 bp to +50 bp from center) -size \"given\" (count tags etc. using the actual regions - for variable length regions)"
    strand: "<+|-|both> (Count tags on specific strands relative to peak, default: both)"
    pc: "<#> (maximum number of tags to count per bp, default=0 [no maximum], -tbp <#> works too)"
    cpg: "(Calculate CpG/GC content)"
    nfr: "(report nuclesome free region scores instead of tag counts, also -nfrSize <#>)"
    norev_opp: "(do not search for motifs on the opposite strand [works with -center too])"
    g_was_catalog: "(list overlapping GWAS risk SNPs)"
    p_dist: "(only report distance to nearest peak using -p, not peak name)"
    mapping_peak_ids: "(mapping between peak IDs and promoter IDs, overrides closest assignment)"
    no_gene: "(skip genome annotation step, skip TSS annotation)"
    homer_one_slash_homer_two: "(by default, the new version of homer [-homer2] is used for finding motifs)"
    cpu: "<#> (Number of processors to use when possible - only some parts utilize multiple cores)"
    no_blanks: "(remove peaks/rows with missing data)"
    peak_file_vertical_line_tss: ""
    genome_version: ""
    additional: ""
    options_dot_dot_dot: ""
  }
}