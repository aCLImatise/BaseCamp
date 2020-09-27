version 1.0

task AnalyzeRepeatspl {
  input {
    Int? lone
    Int? l_two
    Int? l_three
    Boolean? max_div
    Boolean? mind_iv
    Boolean? minlength
    Boolean? maxlength
    Boolean? minlength_p
    Boolean? maxlength_p
    Boolean? condense_l_two
    Boolean? rms_k
    Boolean? five_p
    Boolean? three_p
    Boolean? og
    Boolean? gff_slash_gff_three
    Boolean? gid
    Directory? list_showtag_counts
    Int? count
    Boolean? strand
    Boolean? pc
    Boolean? log
    Boolean? sqrt
    Boolean? condense_genes
    Boolean? no_condensing
    Boolean? no_condensing_parts
    Boolean? min
    String? no_adj
    Boolean? rp_km_slash_fp_km
    Boolean? tpm
    Boolean? norm
    Boolean? norm_matrix
    Boolean? r_log
    Boolean? vst
    Boolean? quantile
    Boolean? upstream
    Boolean? downstream
    Boolean? only_keep_repeats
    File? g_was_catalog
    File input_file
    String genome
  }
  command <<<
    analyzeRepeats_pl \
      ~{input_file} \
      ~{genome} \
      ~{if defined(lone) then ("-L1 " +  '"' + lone + '"') else ""} \
      ~{if defined(l_two) then ("-L2 " +  '"' + l_two + '"') else ""} \
      ~{if defined(l_three) then ("-L3 " +  '"' + l_three + '"') else ""} \
      ~{if (max_div) then "-maxdiv" else ""} \
      ~{if (mind_iv) then "-mindiv" else ""} \
      ~{if (minlength) then "-minLength" else ""} \
      ~{if (maxlength) then "-maxLength" else ""} \
      ~{if (minlength_p) then "-minLengthP" else ""} \
      ~{if (maxlength_p) then "-maxLengthP" else ""} \
      ~{if (condense_l_two) then "-condenseL2" else ""} \
      ~{if (rms_k) then "-rmsk" else ""} \
      ~{if (five_p) then "-5p" else ""} \
      ~{if (three_p) then "-3p" else ""} \
      ~{if (og) then "-og" else ""} \
      ~{if (gff_slash_gff_three) then "-gff/-gff3" else ""} \
      ~{if (gid) then "-gid" else ""} \
      ~{if defined(list_showtag_counts) then ("-d " +  '"' + list_showtag_counts + '"') else ""} \
      ~{if defined(count) then ("-count " +  '"' + count + '"') else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (pc) then "-pc" else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (sqrt) then "-sqrt" else ""} \
      ~{if (condense_genes) then "-condenseGenes" else ""} \
      ~{if (no_condensing) then "-noCondensing" else ""} \
      ~{if (no_condensing_parts) then "-noCondensingParts" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if defined(no_adj) then ("-noadj " +  '"' + no_adj + '"') else ""} \
      ~{if (rp_km_slash_fp_km) then "-rpkm/-fpkm" else ""} \
      ~{if (tpm) then "-tpm" else ""} \
      ~{if (norm) then "-norm" else ""} \
      ~{if (norm_matrix) then "-normMatrix" else ""} \
      ~{if (r_log) then "-rlog" else ""} \
      ~{if (vst) then "-vst" else ""} \
      ~{if (quantile) then "-quantile" else ""} \
      ~{if (upstream) then "-upstream" else ""} \
      ~{if (downstream) then "-downstream" else ""} \
      ~{if (only_keep_repeats) then "-L" else ""} \
      ~{if defined(g_was_catalog) then ("-gwasCatalog " +  '"' + g_was_catalog + '"') else ""}
  >>>
  parameter_meta {
    lone: "(level one 'repeat name', i.e. AluSx3)"
    l_two: "(level two 'repeat family', i.e. SINE)"
    l_three: "(level three 'repeat class', i.e. Alu)"
    max_div: "(max divergence, i.e. -div 0.10, default: 1.0)"
    mind_iv: "(min divergence, default: 0)"
    minlength: "<#> (only return repeats at lest this length, default: 0)"
    maxlength: "<#> (only return repeats less than % of full length, default: no max)"
    minlength_p: "<#> (only return repeats at lest % of full length, default: 0%)"
    maxlength_p: "<#> (only return repeats less than % of full length, default: 100%)"
    condense_l_two: "(combine read counts for repeats for same L2 or L3 annotation)"
    rms_k: "(force filtering of repeats in case it thinks your file is for RNA)"
    five_p: "(return peak files centered on 5' end of repeats)"
    three_p: "(return peak files centered on 3' end of repeats)"
    og: "(return positions relative to full length repeats)"
    gff_slash_gff_three: "(for GFF or GFF3 formated files - ideally use a GTF formated file, default)"
    gid: "(use gene_id instead of transcript_id when parsing GTF file)"
    list_showtag_counts: "[tag directory 2] ... (list of experiment directories to show\\ntag counts for) NOTE: -dfile <file> where file is a list of directories in first column"
    count: "(regions to count reads in, default: genes)\\nSpecify \\\"-pausingOptions\\\" to get more options for pausing analysis for GRO-Seq data"
    strand: "<+|-|both> (count tags on indicated strand, default: both)"
    pc: "<#> or -tbp <#> (maximum tags to count per position, default: 0=no limit)"
    log: "(output tag counts as randomized log2 values - for scatter plots)"
    sqrt: "(output tag counts as randomized sqrt values - for scatter plots)"
    condense_genes: "(Only report one transcript from each gene locus with highest expression)"
    no_condensing: "(do not condense counts from entries will same ID, default: do condense)"
    no_condensing_parts: "(i.e. report exons separately)"
    min: "<#> (minimum expression value to print, default: none)"
    no_adj: "(Don't normalize, report raw counts)"
    rp_km_slash_fp_km: "(Report results as fragments per kb per million mapped)"
    tpm: "(Report transcripts per million)"
    norm: "<#> (Normalize to total mapped tags: default 1e7)"
    norm_matrix: "<#> (Normalize to total tags in gene expression matrix: not used)"
    r_log: "(quantile/variance normalization on reported genes using DESeq2 rlog funcition, needs R)"
    vst: "(quantile/variance normalization on reported genes using DESeq2 vst function, needs R)"
    quantile: "(quantile normalization on reported genes)"
    upstream: "<#> (Distance upstream of each repeat to check for reads, default: 0 [off])"
    downstream: "<#> (Distance downstream to each repeat to check for reads, default: 0 [off])"
    only_keep_repeats: "<#> (Only keep repeats with local enrichment greater than #, default: keep all)"
    g_was_catalog: "(Find overlapping GWAS Catalog file from UCSC)"
    input_file: ""
    genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}