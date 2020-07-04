version 1.0

task SAGE {
  input {
    String? coding_regions
    String? known_hotspots
    String? max_het_binomial_likelihood
    String? min_base_quality
    String? min_in_del_quality
    String? min_in_del_vaf
    String? min_mapping_quality
    String? min_snv_quality
    String? min_snv_vaf
    String? min_tumor_reads
    String? out
    String? ref_genome
    String? reference
    String? reference_bam
    String? tumor
    String? tumor_bam
    String sage_hotspot_application
  }
  command <<<
    SAGE \
      ~{sage_hotspot_application} \
      ~{if defined(coding_regions) then ("-coding_regions " +  '"' + coding_regions + '"') else ""} \
      ~{if defined(known_hotspots) then ("-known_hotspots " +  '"' + known_hotspots + '"') else ""} \
      ~{if defined(max_het_binomial_likelihood) then ("-max_het_binomial_likelihood " +  '"' + max_het_binomial_likelihood + '"') else ""} \
      ~{if defined(min_base_quality) then ("-min_base_quality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(min_in_del_quality) then ("-min_indel_quality " +  '"' + min_in_del_quality + '"') else ""} \
      ~{if defined(min_in_del_vaf) then ("-min_indel_vaf " +  '"' + min_in_del_vaf + '"') else ""} \
      ~{if defined(min_mapping_quality) then ("-min_mapping_quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(min_snv_quality) then ("-min_snv_quality " +  '"' + min_snv_quality + '"') else ""} \
      ~{if defined(min_snv_vaf) then ("-min_snv_vaf " +  '"' + min_snv_vaf + '"') else ""} \
      ~{if defined(min_tumor_reads) then ("-min_tumor_reads " +  '"' + min_tumor_reads + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ref_genome) then ("-ref_genome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(reference) then ("-reference " +  '"' + reference + '"') else ""} \
      ~{if defined(reference_bam) then ("-reference_bam " +  '"' + reference_bam + '"') else ""} \
      ~{if defined(tumor) then ("-tumor " +  '"' + tumor + '"') else ""} \
      ~{if defined(tumor_bam) then ("-tumor_bam " +  '"' + tumor_bam + '"') else ""}
  >>>
  parameter_meta {
    coding_regions: "Coding regions bed file to search for inframe indels"
    known_hotspots: "Tab separated file of known hotspot locations"
    max_het_binomial_likelihood: "Up to 1 read of support for the ALT in the reference is allowed if the binomial likelihood of observing the read (assuming a 50% VAF) is less than this parameter [0.01]"
    min_base_quality: "Minimum quality for a base to be considered [13]"
    min_in_del_quality: "Low confidence filtering minimum indel quality [150]"
    min_in_del_vaf: "Low confidence filtering minimum indel VAF [0.02]"
    min_mapping_quality: "Minimum mapping quality for an alignment to be used [1]"
    min_snv_quality: "Low confidence filtering minimum SNV/MNV quality [100]"
    min_snv_vaf: "Low confidence filtering minimum SNV/MNV VAF [0.005]"
    min_tumor_reads: "Low confidence filtering minimum tumor reads [2]"
    out: "Output VCF file to write. Gz supported."
    ref_genome: "Path to the ref genome fasta file"
    reference: "Name of reference sample"
    reference_bam: "Path to reference bam file"
    tumor: "Name of tumor sample"
    tumor_bam: "Path to tumor bam file"
    sage_hotspot_application: ""
  }
}