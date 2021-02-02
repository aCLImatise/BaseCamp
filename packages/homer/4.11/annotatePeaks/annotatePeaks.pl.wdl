version 1.0

task AnnotatePeakspl {
  input {
    File? gtf
    Boolean? gid
    File? ann
    String? list
    File? ctss
    Boolean? mask
    Int? list_motifs_find
    Boolean? m_score
    Boolean? n_motifs
    Boolean? mdist
    File? m_fast_a
    Int? fm
    Boolean? rm_revo_pp
    Int? matrix
    File? m_bed
    File? m_logic
    Directory? list_showtag_counts
    Int? bed_graph
    File? wig
    File? find_nearest_peaks
    Int? p_dist
    Int? pcount
    File? vcf
    Boolean? edit_distance
    Int? individuals
    File? gene
    Directory? go
    Directory? genome_ontology
    Boolean? g_size
    Boolean? nuc
    Boolean? di
    Boolean? hist_norm
    Boolean? g_hist
    Boolean? rm
    File? center
    Boolean? multi
    Int? cmp_genome
    Int? cmp_lift_over
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
    Boolean? strand
    Boolean? pc
    Boolean? cpg
    Boolean? nfr
    Boolean? norev_opp
    File? g_was_catalog
    File? mapping_peak_ids
    Boolean? no_gene
    Boolean? homer_one_slash_homer_two
    Boolean? cpu
    Boolean? no_blanks
    File peak_file_vertical_line_tss
    String genome_version
    String? additional
    String? options_dot_dot_dot
  }
  command <<<
    annotatePeaks_pl \
      ~{peak_file_vertical_line_tss} \
      ~{genome_version} \
      ~{additional} \
      ~{options_dot_dot_dot} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""} \
      ~{if (gid) then "-gid" else ""} \
      ~{if defined(ann) then ("-ann " +  '"' + ann + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(ctss) then ("-cTSS " +  '"' + ctss + '"') else ""} \
      ~{if (mask) then "-mask" else ""} \
      ~{if defined(list_motifs_find) then ("-m " +  '"' + list_motifs_find + '"') else ""} \
      ~{if (m_score) then "-mscore" else ""} \
      ~{if (n_motifs) then "-nmotifs" else ""} \
      ~{if (mdist) then "-mdist" else ""} \
      ~{if defined(m_fast_a) then ("-mfasta " +  '"' + m_fast_a + '"') else ""} \
      ~{if defined(fm) then ("-fm " +  '"' + fm + '"') else ""} \
      ~{if (rm_revo_pp) then "-rmrevopp" else ""} \
      ~{if defined(matrix) then ("-matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(m_bed) then ("-mbed " +  '"' + m_bed + '"') else ""} \
      ~{if defined(m_logic) then ("-mlogic " +  '"' + m_logic + '"') else ""} \
      ~{if defined(list_showtag_counts) then ("-d " +  '"' + list_showtag_counts + '"') else ""} \
      ~{if defined(bed_graph) then ("-bedGraph " +  '"' + bed_graph + '"') else ""} \
      ~{if defined(wig) then ("-wig " +  '"' + wig + '"') else ""} \
      ~{if defined(find_nearest_peaks) then ("-p " +  '"' + find_nearest_peaks + '"') else ""} \
      ~{if defined(p_dist) then ("-pdist " +  '"' + p_dist + '"') else ""} \
      ~{if defined(pcount) then ("-pcount " +  '"' + pcount + '"') else ""} \
      ~{if defined(vcf) then ("-vcf " +  '"' + vcf + '"') else ""} \
      ~{if (edit_distance) then "-editDistance" else ""} \
      ~{if defined(individuals) then ("-individuals " +  '"' + individuals + '"') else ""} \
      ~{if defined(gene) then ("-gene " +  '"' + gene + '"') else ""} \
      ~{if defined(go) then ("-go " +  '"' + go + '"') else ""} \
      ~{if defined(genome_ontology) then ("-genomeOntology " +  '"' + genome_ontology + '"') else ""} \
      ~{if (g_size) then "-gsize" else ""} \
      ~{if (nuc) then "-nuc" else ""} \
      ~{if (di) then "-di" else ""} \
      ~{if (hist_norm) then "-histNorm" else ""} \
      ~{if (g_hist) then "-ghist" else ""} \
      ~{if (rm) then "-rm" else ""} \
      ~{if defined(center) then ("-center " +  '"' + center + '"') else ""} \
      ~{if (multi) then "-multi" else ""} \
      ~{if defined(cmp_genome) then ("-cmpGenome " +  '"' + cmp_genome + '"') else ""} \
      ~{if defined(cmp_lift_over) then ("-cmpLiftover " +  '"' + cmp_lift_over + '"') else ""} \
      ~{if (fp_km) then "-fpkm" else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (norm) then "-norm" else ""} \
      ~{if (norm_length) then "-normLength" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (sqrt) then "-sqrt" else ""} \
      ~{if (ratio) then "-ratio" else ""} \
      ~{if (r_log) then "-rlog" else ""} \
      ~{if (vst) then "-vst" else ""} \
      ~{if (len) then "-len" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (pc) then "-pc" else ""} \
      ~{if (cpg) then "-CpG" else ""} \
      ~{if (nfr) then "-nfr" else ""} \
      ~{if (norev_opp) then "-norevopp" else ""} \
      ~{if defined(g_was_catalog) then ("-gwasCatalog " +  '"' + g_was_catalog + '"') else ""} \
      ~{if defined(mapping_peak_ids) then ("-map " +  '"' + mapping_peak_ids + '"') else ""} \
      ~{if (no_gene) then "-nogene" else ""} \
      ~{if (homer_one_slash_homer_two) then "-homer1/-homer2" else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if (no_blanks) then "-noblanks" else ""}
  >>>
  parameter_meta {
    gtf: "(Use -gff and -gff3 if appropriate, but GTF is better)"
    gid: "(by default the GTF file is processed by transcript_id, use this option for gene_id)"
    ann: "(created by assignGenomeAnnotation, see website)"
    list: "(subset of genes to perform analysis [unigene, gene id, accession,\\nprobe, etc.], default = all promoters)"
    ctss: "(should be centered on TSS)"
    mask: "(Masked repeats, can also add 'r' to end of genome name)"
    list_motifs_find: "[motif file 2] ... (list of motifs to find in peaks)"
    m_score: "(reports the highest log-odds score within the peak)"
    n_motifs: "(reports the number of motifs per peak)"
    mdist: "(reports distance to closest motif)"
    m_fast_a: "(reports sites in a fasta file - for building new motifs)"
    fm: "[motif file 2] (list of motifs to filter from above)"
    rm_revo_pp: "<#> (only count sites found within <#> on both strands once, i.e. palindromic)"
    matrix: "(outputs a motif co-occurrence files:\\nprefix.count.matrix.txt - number of peaks with motif co-occurrence\\nprefix.ratio.matrix.txt - ratio of observed vs. expected  co-occurrence\\nprefix.logPvalue.matrix.txt - co-occurrence enrichment\\nprefix.stats.txt - table of pair-wise motif co-occurrence statistics\\nadditional options:\\n-matrixMinDist <#> (minimum distance between motif pairs - to avoid overlap, default: 4)\\n-matrixMaxDist <#> (maximum distance between motif pairs)"
    m_bed: "(Output motif positions to a BED file to load at UCSC (or -mpeak))"
    m_logic: "(will output stats on common motif orientations)"
    list_showtag_counts: "[tag directory 2] ... (list of experiment directories to show\\ntag counts for) NOTE: -dfile <file> where file is a list of directories in first column"
    bed_graph: "[bedGraph file 2] ... (read coverage counts from bedGraph files)"
    wig: "[wiggle file 2] ... (read coverage counts from wiggle files)"
    find_nearest_peaks: "[peak file 2] ... (to find nearest peaks)"
    p_dist: "report only distance (-pdist2 gives directional distance)"
    pcount: "report number of peaks within region"
    vcf: "(annotate peaks with genetic variation infomation, one col per individual)"
    edit_distance: "(Computes the # bp changes relative to reference)"
    individuals: "[name2] ... (restrict analysis to these individuals)"
    gene: "... (Adds additional data to result based on the closest gene.\\nThis is useful for adding gene expression data.  The file must have a header,\\nand the first column must be a GeneID, Accession number, etc.  If the peak\\ncannot be mapped to data in the file then the entry will be left empty."
    go: "(perform GO analysis using genes near peaks)"
    genome_ontology: "(perform genomeOntology analysis on peaks)"
    g_size: "<#> (Genome size for genomeOntology analysis, default: 2e9)"
    nuc: "(calculated mononucleotide frequencies at each position,\\nWill report by default if extracting sequence for other purposes like motifs)"
    di: "(calculated dinucleotide frequencies at each position)"
    hist_norm: "<#> (normalize the total tag count for each region to 1, where <#> is the\\nminimum tag total per region - use to avoid tag spikes from low coverage"
    g_hist: "(outputs profiles for each gene, for peak shape clustering)"
    rm: "<#> (remove occurrences of same motif that occur within # bp)"
    center: "(This will re-center peaks on the specified motif, or remove peak\\nif there is no motif in the peak.  ONLY recentering will be performed, and all other\\noptions will be ignored.  This will output a new peak file that can then be reanalyzed\\nto reveal fine-grain structure in peaks (It is advised to use -size < 200) with this\\nto keep peaks from moving too far (-mirror flips the position)"
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
    strand: "<+|-|both> (Count tags on specific strands relative to peak, default: both)"
    pc: "<#> (maximum number of tags to count per bp, default=0 [no maximum], -tbp <#> works too)"
    cpg: "(Calculate CpG/GC content)"
    nfr: "(report nuclesome free region scores instead of tag counts, also -nfrSize <#>)"
    norev_opp: "(do not search for motifs on the opposite strand [works with -center too])"
    g_was_catalog: "(list overlapping GWAS risk SNPs)"
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
  output {
    File out_stdout = stdout()
    File out_m_bed = "${in_m_bed}"
    Directory out_go = "${in_go}"
    Directory out_genome_ontology = "${in_genome_ontology}"
  }
}