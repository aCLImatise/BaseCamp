version 1.0

task ScanIndelpy {
  input {
    Directory? setting_output_directory
    Boolean? setting_minalternatefraction_freebayes
    Boolean? setting_minalternatecount_freebayes
    Boolean? setting_mincoverage_default
    Boolean? setting_target_provide
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
    String? i
    String? p
  }
  command <<<
    ScanIndel_py \
      ~{if (setting_output_directory) then "-o" else ""} \
      ~{if (setting_minalternatefraction_freebayes) then "-F" else ""} \
      ~{if (setting_minalternatecount_freebayes) then "-C" else ""} \
      ~{if (setting_mincoverage_default) then "-d" else ""} \
      ~{if (setting_target_provide) then "-t" else ""} \
      ~{if (softclipping_triggering_default) then "-s" else ""} \
      ~{if (min_percent_hq) then "--min_percent_hq" else ""} \
      ~{if (low_qual_cut_off) then "--lowqual_cutoff" else ""} \
      ~{if (mapq_cut_off) then "--mapq_cutoff" else ""} \
      ~{if (blat_ident_pct_cut_off) then "--blat_ident_pct_cutoff" else ""} \
      ~{if (gf_server_port) then "--gfServer_port" else ""} \
      ~{if (hetero_factor) then "--hetero_factor" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (rmd_up) then "--rmdup" else ""} \
      ~{if (assembly_only) then "--assembly_only" else ""} \
      ~{if (mapping_only) then "--mapping_only" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    setting_output_directory: ":setting the output directory (default current working directory)"
    setting_minalternatefraction_freebayes: ":setting min-alternate-fraction for FreeBayes (default 0.2)"
    setting_minalternatecount_freebayes: ":setting min-alternate-count for FreeBayes (default 2)"
    setting_mincoverage_default: ":setting min-coverage for Freebayes (default 0)"
    setting_target_provide: ":setting --target for Freebayes to provide a BED file for analysis"
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
    i: ""
    p: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_setting_output_directory = "${in_setting_output_directory}"
  }
}