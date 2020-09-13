version 1.0

task MedakaVariant {
  input {
    Boolean? input_bam_reads
    Boolean? input_fasta_reference
    Boolean? region_strings_providing
    Directory? output_folder_default
    Boolean? medaka_model_initial
    Boolean? medaka_model_final
    Boolean? number_threads_create
    Boolean? output_phased_vcf
    Boolean? batchsize_use_default
    Boolean? delete_intermediate_files
    Boolean? threshold_filtering_indels
    Boolean? threshold_filtering_snps
    Boolean? avoid_filtering_filter
    Boolean? stop_initial_prior
  }
  command <<<
    medaka_variant \
      ~{if (input_bam_reads) then "-i" else ""} \
      ~{if (input_fasta_reference) then "-f" else ""} \
      ~{if (region_strings_providing) then "-r" else ""} \
      ~{if (output_folder_default) then "-o" else ""} \
      ~{if (medaka_model_initial) then "-s" else ""} \
      ~{if (medaka_model_final) then "-m" else ""} \
      ~{if (number_threads_create) then "-t" else ""} \
      ~{if (output_phased_vcf) then "-p" else ""} \
      ~{if (batchsize_use_default) then "-b" else ""} \
      ~{if (delete_intermediate_files) then "-d" else ""} \
      ~{if (threshold_filtering_indels) then "-N" else ""} \
      ~{if (threshold_filtering_snps) then "-P" else ""} \
      ~{if (avoid_filtering_filter) then "-U" else ""} \
      ~{if (stop_initial_prior) then "-S" else ""}
  >>>
  parameter_meta {
    input_bam_reads: "input bam of reads aligned to ref. Read groups are currently ignored,\\nso the bam should only contain reads from a single sample."
    input_fasta_reference: "input fasta input reference (required)."
    region_strings_providing: "region string(s). If providing multiple regions, wrap them in quotes.\\nIf not provided, will process all contigs in bam."
    output_folder_default: "output folder (default: medaka_variant)."
    medaka_model_initial: "medaka model for initial SNP calling from mixed reads prior to phasing,\\n(default: r941_prom_snp_g360).\\nAvailable: r103_min_high_g345, r103_min_high_g360, r103_prom_high_g360, r103_prom_snp_g3210, r103_prom_variant_g3210, r10_min_high_g303, r10_min_high_g340, r941_min_fast_g303, r941_min_high_g303, r941_min_high_g330, r941_min_high_g340_rle, r941_min_high_g344, r941_min_high_g351, r941_min_high_g360, r941_prom_fast_g303, r941_prom_high_g303, r941_prom_high_g330, r941_prom_high_g344, r941_prom_high_g360, r941_prom_snp_g303, r941_prom_snp_g322, r941_prom_snp_g360, r941_prom_variant_g303, r941_prom_variant_g322, r941_prom_variant_g360.\\nAlternatively a .hdf file from 'medaka train'."
    medaka_model_final: "medaka model for final variant calling from phased reads,\\n(default: r941_prom_variant_g360).\\nAvailable: r103_min_high_g345, r103_min_high_g360, r103_prom_high_g360, r103_prom_snp_g3210, r103_prom_variant_g3210, r10_min_high_g303, r10_min_high_g340, r941_min_fast_g303, r941_min_high_g303, r941_min_high_g330, r941_min_high_g340_rle, r941_min_high_g344, r941_min_high_g351, r941_min_high_g360, r941_prom_fast_g303, r941_prom_high_g303, r941_prom_high_g330, r941_prom_high_g344, r941_prom_high_g360, r941_prom_snp_g303, r941_prom_snp_g322, r941_prom_snp_g360, r941_prom_variant_g303, r941_prom_variant_g322, r941_prom_variant_g360.\\nAlternatively a .hdf file from 'medaka train'."
    number_threads_create: "number of threads with which to create features (default: 1)."
    output_phased_vcf: "output phased vcf."
    batchsize_use_default: "batchsize, controls memory use (default: 100)."
    delete_intermediate_files: "delete intermediate files. (default: keep)."
    threshold_filtering_indels: "threshold for filtering indels in final VCF (default: 9)"
    threshold_filtering_snps: "threshold for filtering SNPs in final VCF (default: 8)"
    avoid_filtering_filter: "Avoid filtering of final VCF (default: do filter)"
    stop_initial_prior: "stop after initial SNP calling from mixed reads prior to phasing."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_default = "${in_output_folder_default}"
  }
}