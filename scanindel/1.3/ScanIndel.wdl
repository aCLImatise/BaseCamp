version 1.0

task ScanIndel.py {
  input {
    Boolean? setting_directory_default
    Boolean? setting_minalternatefraction_freebayes
    Boolean? setting_minalternatecount_freebayes
    Boolean? setting_mincoverage_freebayes
    Boolean? setting__target
    Boolean? softclipping_triggering_default
    Boolean? min_percent_hq
    Boolean? low_qual_cut_off
    Boolean? mapq_cut_off
    Boolean? blat_ident_pct_cut_off
    Boolean? gf_server_port
    Boolean? hetero_factor
    Boolean? bam
    Boolean? rmd_up
    Boolean? assembly_only
    Boolean? mapping_only
    String? p
    String? i
    String? opts
  }
  command <<<
    ScanIndel.py \
      ~{opts} \
      ~{true="-o" false="" setting_directory_default} \
      ~{true="-F" false="" setting_minalternatefraction_freebayes} \
      ~{true="-C" false="" setting_minalternatecount_freebayes} \
      ~{true="-d" false="" setting_mincoverage_freebayes} \
      ~{true="-t" false="" setting__target} \
      ~{true="-s" false="" softclipping_triggering_default} \
      ~{true="--min_percent_hq" false="" min_percent_hq} \
      ~{true="--lowqual_cutoff" false="" low_qual_cut_off} \
      ~{true="--mapq_cutoff" false="" mapq_cut_off} \
      ~{true="--blat_ident_pct_cutoff" false="" blat_ident_pct_cut_off} \
      ~{true="--gfServer_port" false="" gf_server_port} \
      ~{true="--hetero_factor" false="" hetero_factor} \
      ~{true="--bam" false="" bam} \
      ~{true="--rmdup" false="" rmd_up} \
      ~{true="--assembly_only" false="" assembly_only} \
      ~{true="--mapping_only" false="" mapping_only} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    setting_directory_default: ":setting the output directory (default current working directory)"
    setting_minalternatefraction_freebayes: ":setting min-alternate-fraction for FreeBayes (default 0.2)"
    setting_minalternatecount_freebayes: ":setting min-alternate-count for FreeBayes (default 2)"
    setting_mincoverage_freebayes: ":setting min-coverage for Freebayes (default 0)"
    setting__target: ":setting --target for Freebayes to provide a BED file for analysis"
    softclipping_triggering_default: ":softclipping percentage triggering BLAT re-alignment (default 0.2)"
    min_percent_hq: ":min percentage of high quality base in soft clipping reads, default 0.8"
    low_qual_cut_off: ":low quality cutoff value, default 20"
    mapq_cut_off: ":low mapping quality cutoff, default 1"
    blat_ident_pct_cut_off: ":Blat sequence identity cutoff, default 0.8"
    gf_server_port: ":gfServer service port number, default 50000"
    hetero_factor: ":The factor about the indel's heterogenirity and heterozygosity, default 0.1"
    bam: ":the input file is BAM format"
    rmd_up: ":exccute duplicate removal step before realignment"
    assembly_only: ":only execute de novo assembly for indel calling without blat realignment (default False)"
    mapping_only: ":only execute blat realignment withou de novo assembly for indel calling (default False)"
    p: ""
    i: ""
    opts: ""
  }
}