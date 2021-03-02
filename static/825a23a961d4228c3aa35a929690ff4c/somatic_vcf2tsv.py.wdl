version 1.0

task SomaticVcf2tsvpy {
  input {
    File? vcf_format
    File? bed_format
    String? positions_list
    File? normal_bam_file
    File? tumor_bam_file
    String? ground_truth_vcf
    String? dbsnp_vcf
    String? cosmic_vcf
    String? mute_ct_vcf
    String? str_elka_vcf
    String? somatic_sniper_vcf
    Int? vars_can_vcf
    Int? jsm_vcf
    String? var_dict_vcf
    String? muse_vcf
    String? lo_freq_vcf
    String? scalpel_vcf
    String? tn_scope_vcf
    String? platypus_vcf
    File? genome_reference
    Boolean? de_duplicate
    Int? minimum_mapping_quality
    Int? minimum_base_quality
    Int? minimum_num_callers
    String? p_scale
    File? output_tsv_file
  }
  command <<<
    somatic_vcf2tsv_py \
      ~{if defined(vcf_format) then ("--vcf-format " +  '"' + vcf_format + '"') else ""} \
      ~{if defined(bed_format) then ("--bed-format " +  '"' + bed_format + '"') else ""} \
      ~{if defined(positions_list) then ("--positions-list " +  '"' + positions_list + '"') else ""} \
      ~{if defined(normal_bam_file) then ("--normal-bam-file " +  '"' + normal_bam_file + '"') else ""} \
      ~{if defined(tumor_bam_file) then ("--tumor-bam-file " +  '"' + tumor_bam_file + '"') else ""} \
      ~{if defined(ground_truth_vcf) then ("--ground-truth-vcf " +  '"' + ground_truth_vcf + '"') else ""} \
      ~{if defined(dbsnp_vcf) then ("--dbsnp-vcf " +  '"' + dbsnp_vcf + '"') else ""} \
      ~{if defined(cosmic_vcf) then ("--cosmic-vcf " +  '"' + cosmic_vcf + '"') else ""} \
      ~{if defined(mute_ct_vcf) then ("--mutect-vcf " +  '"' + mute_ct_vcf + '"') else ""} \
      ~{if defined(str_elka_vcf) then ("--strelka-vcf " +  '"' + str_elka_vcf + '"') else ""} \
      ~{if defined(somatic_sniper_vcf) then ("--somaticsniper-vcf " +  '"' + somatic_sniper_vcf + '"') else ""} \
      ~{if defined(vars_can_vcf) then ("--varscan-vcf " +  '"' + vars_can_vcf + '"') else ""} \
      ~{if defined(jsm_vcf) then ("--jsm-vcf " +  '"' + jsm_vcf + '"') else ""} \
      ~{if defined(var_dict_vcf) then ("--vardict-vcf " +  '"' + var_dict_vcf + '"') else ""} \
      ~{if defined(muse_vcf) then ("--muse-vcf " +  '"' + muse_vcf + '"') else ""} \
      ~{if defined(lo_freq_vcf) then ("--lofreq-vcf " +  '"' + lo_freq_vcf + '"') else ""} \
      ~{if defined(scalpel_vcf) then ("--scalpel-vcf " +  '"' + scalpel_vcf + '"') else ""} \
      ~{if defined(tn_scope_vcf) then ("--tnscope-vcf " +  '"' + tn_scope_vcf + '"') else ""} \
      ~{if defined(platypus_vcf) then ("--platypus-vcf " +  '"' + platypus_vcf + '"') else ""} \
      ~{if defined(genome_reference) then ("--genome-reference " +  '"' + genome_reference + '"') else ""} \
      ~{if (de_duplicate) then "--deduplicate" else ""} \
      ~{if defined(minimum_mapping_quality) then ("--minimum-mapping-quality " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{if defined(minimum_base_quality) then ("--minimum-base-quality " +  '"' + minimum_base_quality + '"') else ""} \
      ~{if defined(minimum_num_callers) then ("--minimum-num-callers " +  '"' + minimum_num_callers + '"') else ""} \
      ~{if defined(p_scale) then ("--p-scale " +  '"' + p_scale + '"') else ""} \
      ~{if defined(output_tsv_file) then ("--output-tsv-file " +  '"' + output_tsv_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_format: "Input file is VCF formatted. (default: None)"
    bed_format: "Input file is BED formatted. (default: None)"
    positions_list: "A list of positions: tab seperating contig and\\npositions. (default: None)"
    normal_bam_file: "Normal BAM File (default: None)"
    tumor_bam_file: "Tumor BAM File (default: None)"
    ground_truth_vcf: "VCF of true hits (default: None)"
    dbsnp_vcf: "dbSNP VCF: do not use if input VCF is annotated\\n(default: None)"
    cosmic_vcf: "COSMIC VCF: do not use if input VCF is annotated\\n(default: None)"
    mute_ct_vcf: "MuTect VCF (default: None)"
    str_elka_vcf: "Strelka VCF (default: None)"
    somatic_sniper_vcf: "SomaticSniper VCF (default: None)"
    vars_can_vcf: "VarScan2 VCF (default: None)"
    jsm_vcf: "JointSNVMix2 VCF (default: None)"
    var_dict_vcf: "VarDict VCF (default: None)"
    muse_vcf: "MuSE VCF (default: None)"
    lo_freq_vcf: "LoFreq VCF (default: None)"
    scalpel_vcf: "Scalpel VCF (default: None)"
    tn_scope_vcf: "TNscope VCF (default: None)"
    platypus_vcf: "Platypus VCF (default: None)"
    genome_reference: ".fasta.fai file to get the contigs (default: None)"
    de_duplicate: "Do not consider duplicate reads from BAM files.\\nDefault is to count everything (default: False)"
    minimum_mapping_quality: "Minimum mapping quality below which is considered poor\\n(default: 1)"
    minimum_base_quality: "Minimum base quality below which is considered poor\\n(default: 5)"
    minimum_num_callers: "Minimum number of tools to be considered (default: 0)"
    p_scale: "phred, fraction, or none (default: None)"
    output_tsv_file: "Output TSV Name (default: <_io.TextIOWrapper\\nname='<stdout>' mode='w' encoding='utf-8'>)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_tsv_file = "${in_output_tsv_file}"
  }
}