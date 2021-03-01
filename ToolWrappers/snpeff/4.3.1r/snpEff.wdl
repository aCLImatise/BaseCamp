version 1.0

task SnpEff {
  input {
    String? chr
    Boolean? classic
    File? csv_stats
    Boolean? download
    String? input_format_default
    Boolean? file_list
    String? ouput_format_default
    Boolean? html_stats
    Boolean? no_stats
    Boolean? filter_interval
    Boolean? no_downstream
    Boolean? no_intergenic
    Boolean? no_intron
    Boolean? no_upstream
    Boolean? no_utr
    String? no
    Boolean? cancer
    File? cancer_samples
    Boolean? format_eff
    Boolean? geneid
    Boolean? hgvs
    Boolean? hgv_sold
    Boolean? hgvs_one_letter_aa
    Boolean? hgv_strid
    Boolean? l_of
    Boolean? no_hgvs
    Boolean? nol_of
    Boolean? no_shift_hgvs
    Boolean? oic_r
    Boolean? sequence_ontology
    Boolean? config
    File? config_option
    Boolean? debug
    File? datadir
    Boolean? no_download
    Boolean? no_log
    Boolean? use_multiple_threads
    Boolean? quiet
    Boolean? verbose
    Boolean? version
    Boolean? canon
    File? canon_list
    Boolean? interaction
    File? interval
    Int? max_tsl
    Boolean? motif
    Boolean? next_prot
    Boolean? no_genome
    Boolean? noexpand_iub
    Boolean? no_interaction
    Boolean? no_motif
    Boolean? no_next_prot
    Boolean? only_reg
    Boolean? only_protein
    File? only_tr
    String? reg
    Int? splice_site_size
    Int? splice_region_exon_size
    Int? splice_region_intron_min
    Int? splice_region_intron_max
    Boolean? strict
    Int? up_downstream_len
    String variants_file
  }
  command <<<
    snpEff \
      ~{variants_file} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if (classic) then "-classic" else ""} \
      ~{if defined(csv_stats) then ("-csvStats " +  '"' + csv_stats + '"') else ""} \
      ~{if (download) then "-download" else ""} \
      ~{if defined(input_format_default) then ("-i " +  '"' + input_format_default + '"') else ""} \
      ~{if (file_list) then "-fileList" else ""} \
      ~{if defined(ouput_format_default) then ("-o " +  '"' + ouput_format_default + '"') else ""} \
      ~{if (html_stats) then "-htmlStats" else ""} \
      ~{if (no_stats) then "-noStats" else ""} \
      ~{if (filter_interval) then "-filterInterval" else ""} \
      ~{if (no_downstream) then "-no-downstream" else ""} \
      ~{if (no_intergenic) then "-no-intergenic" else ""} \
      ~{if (no_intron) then "-no-intron" else ""} \
      ~{if (no_upstream) then "-no-upstream" else ""} \
      ~{if (no_utr) then "-no-utr" else ""} \
      ~{if defined(no) then ("-no " +  '"' + no + '"') else ""} \
      ~{if (cancer) then "-cancer" else ""} \
      ~{if defined(cancer_samples) then ("-cancerSamples " +  '"' + cancer_samples + '"') else ""} \
      ~{if (format_eff) then "-formatEff" else ""} \
      ~{if (geneid) then "-geneId" else ""} \
      ~{if (hgvs) then "-hgvs" else ""} \
      ~{if (hgv_sold) then "-hgvsOld" else ""} \
      ~{if (hgvs_one_letter_aa) then "-hgvs1LetterAa" else ""} \
      ~{if (hgv_strid) then "-hgvsTrId" else ""} \
      ~{if (l_of) then "-lof" else ""} \
      ~{if (no_hgvs) then "-noHgvs" else ""} \
      ~{if (nol_of) then "-noLof" else ""} \
      ~{if (no_shift_hgvs) then "-noShiftHgvs" else ""} \
      ~{if (oic_r) then "-oicr" else ""} \
      ~{if (sequence_ontology) then "-sequenceOntology" else ""} \
      ~{if (config) then "-config" else ""} \
      ~{if defined(config_option) then ("-configOption " +  '"' + config_option + '"') else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if defined(datadir) then ("-dataDir " +  '"' + datadir + '"') else ""} \
      ~{if (no_download) then "-nodownload" else ""} \
      ~{if (no_log) then "-noLog" else ""} \
      ~{if (use_multiple_threads) then "-t" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (canon) then "-canon" else ""} \
      ~{if defined(canon_list) then ("-canonList " +  '"' + canon_list + '"') else ""} \
      ~{if (interaction) then "-interaction" else ""} \
      ~{if defined(interval) then ("-interval " +  '"' + interval + '"') else ""} \
      ~{if defined(max_tsl) then ("-maxTSL " +  '"' + max_tsl + '"') else ""} \
      ~{if (motif) then "-motif" else ""} \
      ~{if (next_prot) then "-nextProt" else ""} \
      ~{if (no_genome) then "-noGenome" else ""} \
      ~{if (noexpand_iub) then "-noExpandIUB" else ""} \
      ~{if (no_interaction) then "-noInteraction" else ""} \
      ~{if (no_motif) then "-noMotif" else ""} \
      ~{if (no_next_prot) then "-noNextProt" else ""} \
      ~{if (only_reg) then "-onlyReg" else ""} \
      ~{if (only_protein) then "-onlyProtein" else ""} \
      ~{if defined(only_tr) then ("-onlyTr " +  '"' + only_tr + '"') else ""} \
      ~{if defined(reg) then ("-reg " +  '"' + reg + '"') else ""} \
      ~{if defined(splice_site_size) then ("-spliceSiteSize " +  '"' + splice_site_size + '"') else ""} \
      ~{if defined(splice_region_exon_size) then ("-spliceRegionExonSize " +  '"' + splice_region_exon_size + '"') else ""} \
      ~{if defined(splice_region_intron_min) then ("-spliceRegionIntronMin " +  '"' + splice_region_intron_min + '"') else ""} \
      ~{if defined(splice_region_intron_max) then ("-spliceRegionIntronMax " +  '"' + splice_region_intron_max + '"') else ""} \
      ~{if (strict) then "-strict" else ""} \
      ~{if defined(up_downstream_len) then ("-upDownStreamLen " +  '"' + up_downstream_len + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chr: ": Prepend 'string' to chromosome name (e.g. 'chr1' instead of '1'). Only on TXT output."
    classic: ": Use old style annotations instead of Sequence Ontology and Hgvs."
    csv_stats: ": Create CSV summary file."
    download: ": Download reference genome if not available. Default: true"
    input_format_default: ": Input format [ vcf, bed ]. Default: VCF."
    file_list: ": Input actually contains a list of files to process."
    ouput_format_default: ": Ouput format [ vcf, gatk, bed, bedAnn ]. Default: VCF."
    html_stats: ": Create HTML summary file.  Default is 'snpEff_summary.html'"
    no_stats: ": Do not create stats (summary) file"
    filter_interval: "<file>   : Only analyze changes that intersect with the intervals specified in this file (you may use this option many times)"
    no_downstream: ": Do not show DOWNSTREAM changes"
    no_intergenic: ": Do not show INTERGENIC changes"
    no_intron: ": Do not show INTRON changes"
    no_upstream: ": Do not show UPSTREAM changes"
    no_utr: ": Do not show 5_PRIME_UTR or 3_PRIME_UTR changes"
    no: ": Do not show 'EffectType'. This option can be used several times."
    cancer: ": Perform 'cancer' comparisons (Somatic vs Germline). Default: false"
    cancer_samples: ": Two column TXT file defining 'oringinal \\t derived' samples."
    format_eff: ": Use 'EFF' field compatible with older versions (instead of 'ANN')."
    geneid: ": Use gene ID instead of gene name (VCF output). Default: false"
    hgvs: ": Use HGVS annotations for amino acid sub-field. Default: true"
    hgv_sold: ": Use old HGVS notation. Default: false"
    hgvs_one_letter_aa: ": Use one letter Amino acid codes in HGVS notation. Default: false"
    hgv_strid: ": Use transcript ID in HGVS notation. Default: false"
    l_of: ": Add loss of function (LOF) and Nonsense mediated decay (NMD) tags."
    no_hgvs: ": Do not add HGVS annotations."
    nol_of: ": Do not add LOF and NMD annotations."
    no_shift_hgvs: ": Do not shift variants according to HGVS notation (most 3prime end)."
    oic_r: ": Add OICR tag in VCF file. Default: false"
    sequence_ontology: ": Use Sequence Ontology terms. Default: true"
    config: ": Specify config file"
    config_option: "=value     : Override a config file option"
    debug: ": Debug mode (very verbose)."
    datadir: ": Override data_dir parameter from config file."
    no_download: ": Do not download a SnpEff database, if not available locally."
    no_log: ": Do not report usage statistics to server"
    use_multiple_threads: ": Use multiple threads (implies '-noStats'). Default 'off'"
    quiet: ": Quiet mode (do not show any messages or errors)"
    verbose: ": Verbose mode"
    version: ": Show version number and exit"
    canon: ": Only use canonical transcripts."
    canon_list: ": Only use canonical transcripts, replace some transcripts using the 'gene_id       transcript_id' entries in <file>."
    interaction: ": Annotate using inteactions (requires interaciton database). Default: true"
    interval: ": Use a custom intervals in TXT/BED/BigBed/VCF/GFF file (you may use this option many times)"
    max_tsl: ": Only use transcripts having Transcript Support Level lower than <TSL_number>."
    motif: ": Annotate using motifs (requires Motif database). Default: true"
    next_prot: ": Annotate using NextProt (requires NextProt database)."
    no_genome: ": Do not load any genomic database (e.g. annotate using custom files)."
    noexpand_iub: ": Disable IUB code expansion in input variants"
    no_interaction: ": Disable inteaction annotations"
    no_motif: ": Disable motif annotations."
    no_next_prot: ": Disable NextProt annotations."
    only_reg: ": Only use regulation tracks."
    only_protein: ": Only use protein coding transcripts. Default: false"
    only_tr: ": Only use the transcripts in this file. Format: One transcript ID per line."
    reg: ": Regulation track to use (this option can be used add several times)."
    splice_site_size: ": Set size for splice sites (donor and acceptor) in bases. Default: 2"
    splice_region_exon_size: ": Set size for splice site region within exons. Default: 3 bases"
    splice_region_intron_min: ": Set minimum number of bases for splice site region within intron. Default: 3 bases"
    splice_region_intron_max: ": Set maximum number of bases for splice site region within intron. Default: 8 bases"
    strict: ": Only use 'validated' transcripts (i.e. sequence has been checked). Default: false"
    up_downstream_len: ": Set upstream downstream interval length (in bases)"
    variants_file: ": Default is STDIN"
  }
  output {
    File out_stdout = stdout()
  }
}