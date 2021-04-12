version 1.0

task MedakaVariant {
  input {
    Boolean? input_bam_reads
    Boolean? input_fasta_input
    Boolean? region_strings_wrap
    Directory? output_folder_default
    Boolean? var_4
    Boolean? m
    Boolean? number_threads_create
    Boolean? output_phased_vcf
    Boolean? batchsize_controls_default
    Boolean? delete_intermediate_files
    Boolean? threshold_filtering_indels
    Boolean? threshold_filtering_snps
    Boolean? avoid_filtering_final
    Boolean? stop_snp_calling
    Boolean? split_mnps_snps
    Boolean? set_sample_name
  }
  command <<<
    medaka_variant \
      ~{if (input_bam_reads) then "-i" else ""} \
      ~{if (input_fasta_input) then "-f" else ""} \
      ~{if (region_strings_wrap) then "-r" else ""} \
      ~{if (output_folder_default) then "-o" else ""} \
      ~{if (var_4) then "-s" else ""} \
      ~{if (m) then "-m" else ""} \
      ~{if (number_threads_create) then "-t" else ""} \
      ~{if (output_phased_vcf) then "-p" else ""} \
      ~{if (batchsize_controls_default) then "-b" else ""} \
      ~{if (delete_intermediate_files) then "-d" else ""} \
      ~{if (threshold_filtering_indels) then "-N" else ""} \
      ~{if (threshold_filtering_snps) then "-P" else ""} \
      ~{if (avoid_filtering_final) then "-U" else ""} \
      ~{if (stop_snp_calling) then "-S" else ""} \
      ~{if (split_mnps_snps) then "-l" else ""} \
      ~{if (set_sample_name) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.6--py38h64b100c_0"
  }
  parameter_meta {
    input_bam_reads: "input bam of reads aligned to ref. Read groups are currently ignored,\\nso the bam should only contain reads from a single sample."
    input_fasta_input: "input fasta input reference (required)."
    region_strings_wrap: "region string(s). If providing multiple regions, wrap them in quotes.\\nIf not provided, will process all contigs in bam."
    output_folder_default: "output folder (default: medaka_variant)."
    var_4: "medaka model for initial SNP calling from mixed reads prior to phasing,\\n(default: r941_prom_snp_g360).\\nAvailable: r103_min_high_g345, r103_min_high_g360, r103_prom_high_g360, r103_prom_snp_g3210, r103_prom_variant_g3210, r10_min_high_g303, r10_min_high_g340, r941_min_fast_g303, r941_min_high_g303, r941_min_high_g330, r941_min_high_g340_rle, r941_min_high_g344, r941_min_high_g351, r941_min_high_g360, r941_prom_fast_g303, r941_prom_high_g303, r941_prom_high_g330, r941_prom_high_g344, r941_prom_high_g360, r941_prom_high_g4011, r941_prom_snp_g303, r941_prom_snp_g322, r941_prom_snp_g360, r941_prom_variant_g303, r941_prom_variant_g322, r941_prom_variant_g360.\\nAlternatively a .hdf file from 'medaka train'."
    m: "medaka model for final variant calling from phased reads,\\n(default: r941_prom_variant_g360).\\nAvailable: r103_min_high_g345, r103_min_high_g360, r103_prom_high_g360, r103_prom_snp_g3210, r103_prom_variant_g3210, r10_min_high_g303, r10_min_high_g340, r941_min_fast_g303, r941_min_high_g303, r941_min_high_g330, r941_min_high_g340_rle, r941_min_high_g344, r941_min_high_g351, r941_min_high_g360, r941_prom_fast_g303, r941_prom_high_g303, r941_prom_high_g330, r941_prom_high_g344, r941_prom_high_g360, r941_prom_high_g4011, r941_prom_snp_g303, r941_prom_snp_g322, r941_prom_snp_g360, r941_prom_variant_g303, r941_prom_variant_g322, r941_prom_variant_g360.\\nAlternatively a .hdf file from 'medaka train'."
    number_threads_create: "number of threads with which to create features (default: 1)."
    output_phased_vcf: "output phased vcf."
    batchsize_controls_default: "batchsize, controls memory use (default: 100)."
    delete_intermediate_files: "delete intermediate files. (default: keep)."
    threshold_filtering_indels: "threshold for filtering indels in final VCF (default: 9)"
    threshold_filtering_snps: "threshold for filtering SNPs in final VCF (default: 8)"
    avoid_filtering_final: "Avoid filtering of final VCF (default: do filter)"
    stop_snp_calling: "stop after initial SNP calling from mixed reads prior to phasing."
    split_mnps_snps: "split MNPs into SNPs."
    set_sample_name: "set this sample name in the output VCF and phased bam."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_default = "${in_output_folder_default}"
  }
}