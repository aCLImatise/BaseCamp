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
    Boolean? stats_htmlstats_create
    Boolean? no_stats
    Boolean? fi
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
    Boolean? config_specify_config
    String? config_option
    Boolean? debug_debug_mode
    File? datadir
    Boolean? no_download
    Boolean? no_log
    Boolean? use_threads_implies
    Boolean? quiet_quiet_mode
    Boolean? verbose_verbose_mode
    Boolean? version
    Boolean? canon
    File? canon_list
    Boolean? interaction
    File? interval
    String? max_tsl
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
    Boolean? ss
    Int? splice_region_exon_size
    Int? splice_region_intron_min
    Int? splice_region_intron_max
    Boolean? strict
    Boolean? ud
    String variants_file
  }
  command <<<
    snpEff \
      ~{variants_file} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{true="-classic" false="" classic} \
      ~{if defined(csv_stats) then ("-csvStats " +  '"' + csv_stats + '"') else ""} \
      ~{true="-download" false="" download} \
      ~{if defined(input_format_default) then ("-i " +  '"' + input_format_default + '"') else ""} \
      ~{true="-fileList" false="" file_list} \
      ~{if defined(ouput_format_default) then ("-o " +  '"' + ouput_format_default + '"') else ""} \
      ~{true="-s" false="" stats_htmlstats_create} \
      ~{true="-noStats" false="" no_stats} \
      ~{true="-fi" false="" fi} \
      ~{true="-no-downstream" false="" no_downstream} \
      ~{true="-no-intergenic" false="" no_intergenic} \
      ~{true="-no-intron" false="" no_intron} \
      ~{true="-no-upstream" false="" no_upstream} \
      ~{true="-no-utr" false="" no_utr} \
      ~{if defined(no) then ("-no " +  '"' + no + '"') else ""} \
      ~{true="-cancer" false="" cancer} \
      ~{if defined(cancer_samples) then ("-cancerSamples " +  '"' + cancer_samples + '"') else ""} \
      ~{true="-formatEff" false="" format_eff} \
      ~{true="-geneId" false="" geneid} \
      ~{true="-hgvs" false="" hgvs} \
      ~{true="-hgvsOld" false="" hgv_sold} \
      ~{true="-hgvs1LetterAa" false="" hgvs_one_letter_aa} \
      ~{true="-hgvsTrId" false="" hgv_strid} \
      ~{true="-lof" false="" l_of} \
      ~{true="-noHgvs" false="" no_hgvs} \
      ~{true="-noLof" false="" nol_of} \
      ~{true="-noShiftHgvs" false="" no_shift_hgvs} \
      ~{true="-oicr" false="" oic_r} \
      ~{true="-sequenceOntology" false="" sequence_ontology} \
      ~{true="-c" false="" config_specify_config} \
      ~{if defined(config_option) then ("-configOption " +  '"' + config_option + '"') else ""} \
      ~{true="-d" false="" debug_debug_mode} \
      ~{if defined(datadir) then ("-dataDir " +  '"' + datadir + '"') else ""} \
      ~{true="-nodownload" false="" no_download} \
      ~{true="-noLog" false="" no_log} \
      ~{true="-t" false="" use_threads_implies} \
      ~{true="-q" false="" quiet_quiet_mode} \
      ~{true="-v" false="" verbose_verbose_mode} \
      ~{true="-version" false="" version} \
      ~{true="-canon" false="" canon} \
      ~{if defined(canon_list) then ("-canonList " +  '"' + canon_list + '"') else ""} \
      ~{true="-interaction" false="" interaction} \
      ~{if defined(interval) then ("-interval " +  '"' + interval + '"') else ""} \
      ~{if defined(max_tsl) then ("-maxTSL " +  '"' + max_tsl + '"') else ""} \
      ~{true="-motif" false="" motif} \
      ~{true="-nextProt" false="" next_prot} \
      ~{true="-noGenome" false="" no_genome} \
      ~{true="-noExpandIUB" false="" noexpand_iub} \
      ~{true="-noInteraction" false="" no_interaction} \
      ~{true="-noMotif" false="" no_motif} \
      ~{true="-noNextProt" false="" no_next_prot} \
      ~{true="-onlyReg" false="" only_reg} \
      ~{true="-onlyProtein" false="" only_protein} \
      ~{if defined(only_tr) then ("-onlyTr " +  '"' + only_tr + '"') else ""} \
      ~{if defined(reg) then ("-reg " +  '"' + reg + '"') else ""} \
      ~{true="-ss" false="" ss} \
      ~{if defined(splice_region_exon_size) then ("-spliceRegionExonSize " +  '"' + splice_region_exon_size + '"') else ""} \
      ~{if defined(splice_region_intron_min) then ("-spliceRegionIntronMin " +  '"' + splice_region_intron_min + '"') else ""} \
      ~{if defined(splice_region_intron_max) then ("-spliceRegionIntronMax " +  '"' + splice_region_intron_max + '"') else ""} \
      ~{true="-strict" false="" strict} \
      ~{true="-ud" false="" ud}
  >>>
  parameter_meta {
    chr: ": Prepend 'string' to chromosome name (e.g. 'chr1' instead of '1'). Only on TXT output."
    classic: ": Use old style annotations instead of Sequence Ontology and Hgvs."
    csv_stats: ": Create CSV summary file."
    download: ": Download reference genome if not available. Default: true"
    input_format_default: ": Input format [ vcf, bed ]. Default: VCF."
    file_list: ": Input actually contains a list of files to process."
    ouput_format_default: ": Ouput format [ vcf, gatk, bed, bedAnn ]. Default: VCF."
    stats_htmlstats_create: ", -stats, -htmlStats         : Create HTML summary file.  Default is 'snpEff_summary.html'"
    no_stats: ": Do not create stats (summary) file"
    fi: ", -filterInterval  <file>   : Only analyze changes that intersect with the intervals specified in this file (you may use this option many times)"
    no_downstream: ": Do not show DOWNSTREAM changes"
    no_intergenic: ": Do not show INTERGENIC changes"
    no_intron: ": Do not show INTRON changes"
    no_upstream: ": Do not show UPSTREAM changes"
    no_utr: ": Do not show 5_PRIME_UTR or 3_PRIME_UTR changes"
    no: ": Do not show 'EffectType'. This option can be used several times."
    cancer: ": Perform 'cancer' comparisons (Somatic vs Germline). Default: false"
    cancer_samples: ": Two column TXT file defining 'oringinal \t derived' samples."
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
    config_specify_config: ", -config                 : Specify config file"
    config_option: "=value     : Override a config file option"
    debug_debug_mode: ", -debug                  : Debug mode (very verbose)."
    datadir: ": Override data_dir parameter from config file."
    no_download: ": Do not download a SnpEff database, if not available locally."
    no_log: ": Do not report usage statistics to server"
    use_threads_implies: ": Use multiple threads (implies '-noStats'). Default 'off'"
    quiet_quiet_mode: ", -quiet                  : Quiet mode (do not show any messages or errors)"
    verbose_verbose_mode: ", -verbose                : Verbose mode"
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
    ss: ", -spliceSiteSize <int>  : Set size for splice sites (donor and acceptor) in bases. Default: 2"
    splice_region_exon_size: ": Set size for splice site region within exons. Default: 3 bases"
    splice_region_intron_min: ": Set minimum number of bases for splice site region within intron. Default: 3 bases"
    splice_region_intron_max: ": Set maximum number of bases for splice site region within intron. Default: 8 bases"
    strict: ": Only use 'validated' transcripts (i.e. sequence has been checked). Default: false"
    ud: ", -upDownStreamLen <int> : Set upstream downstream interval length (in bases)"
    variants_file: ": Default is STDIN"
  }
}