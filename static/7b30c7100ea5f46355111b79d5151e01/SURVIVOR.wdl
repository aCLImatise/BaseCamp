version 1.0

task SURVIVOR {
  input {
    String sims_v
    String scan_reads
    String sim_reads
    String eval
    String merge
    String filter
    String stats
    String comp_mummer
    String bin_cov
    String vcf_to_bed
    String bed_to_vcf
    String smap_to_vcf
    String bed_pe_to_vcf
    String hap_cut_to_vcf
    String convert_assembly_tics
  }
  command <<<
    SURVIVOR \
      ~{sims_v} \
      ~{scan_reads} \
      ~{sim_reads} \
      ~{eval} \
      ~{merge} \
      ~{filter} \
      ~{stats} \
      ~{comp_mummer} \
      ~{bin_cov} \
      ~{vcf_to_bed} \
      ~{bed_to_vcf} \
      ~{smap_to_vcf} \
      ~{bed_pe_to_vcf} \
      ~{hap_cut_to_vcf} \
      ~{convert_assembly_tics}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sims_v: "Simulates SVs and SNPs on a reference genome."
    scan_reads: "Obtain error profiles form mapped reads for simulation."
    sim_reads: "Simulates long reads (Pacio or ONT)."
    eval: "Evaluates a VCF file after SV calling over simulated data."
    merge: "Compare or merge VCF files to generate a consensus or multi sample VCF files."
    filter: "Filter a vcf file based on size and/or regions to ignore"
    stats: "Report multipe stats over a VCF file"
    comp_mummer: "Annotates a VCF file with the breakpoints found with MUMMer (Show-diff)."
    bin_cov: "Bins coverage vector to a bed file to filter SVs in low MQ regions"
    vcf_to_bed: "Converts a VCF file to a bed file"
    bed_to_vcf: "Converts a bed file to a VCF file "
    smap_to_vcf: "Converts the smap file to a VCF file (beta version)"
    bed_pe_to_vcf: "Converts a bedpe file ot a VCF file (beta version)"
    hap_cut_to_vcf: "Converts the Hapcut2 final file to a VCF file using the original SNP file provided to Hapcut2"
    convert_assembly_tics: "Converts Assemblytics to a VCF file"
  }
  output {
    File out_stdout = stdout()
  }
}