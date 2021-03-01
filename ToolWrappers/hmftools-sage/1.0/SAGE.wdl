version 1.0

task SAGE {
  input {
    File? known_hotspots
    Int? min_base_quality
    Int? min_in_del_quality
    Float? min_in_del_vaf
    Int? min_mapping_quality
    Int? min_snv_quality
    Float? min_snv_vaf
    Int? min_tumor_reads
    File? out
    String? reference
    File? reference_bam
    String? tumor
    File? tumor_bam
    String sage_hotspot_application
    String locations
    String supported_dot
  }
  command <<<
    SAGE \
      ~{sage_hotspot_application} \
      ~{locations} \
      ~{supported_dot} \
      ~{if defined(known_hotspots) then ("-known_hotspots " +  '"' + known_hotspots + '"') else ""} \
      ~{if defined(min_base_quality) then ("-min_base_quality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(min_in_del_quality) then ("-min_indel_quality " +  '"' + min_in_del_quality + '"') else ""} \
      ~{if defined(min_in_del_vaf) then ("-min_indel_vaf " +  '"' + min_in_del_vaf + '"') else ""} \
      ~{if defined(min_mapping_quality) then ("-min_mapping_quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(min_snv_quality) then ("-min_snv_quality " +  '"' + min_snv_quality + '"') else ""} \
      ~{if defined(min_snv_vaf) then ("-min_snv_vaf " +  '"' + min_snv_vaf + '"') else ""} \
      ~{if defined(min_tumor_reads) then ("-min_tumor_reads " +  '"' + min_tumor_reads + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(reference) then ("-reference " +  '"' + reference + '"') else ""} \
      ~{if defined(reference_bam) then ("-reference_bam " +  '"' + reference_bam + '"') else ""} \
      ~{if defined(tumor) then ("-tumor " +  '"' + tumor + '"') else ""} \
      ~{if defined(tumor_bam) then ("-tumor_bam " +  '"' + tumor_bam + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    known_hotspots: "Tab separated file of known hotspot"
    min_base_quality: "Minimum quality for a base to be\\nconsidered [13]"
    min_in_del_quality: "Low confidence filtering minimum\\nindel quality [150]"
    min_in_del_vaf: "Low confidence filtering minimum\\nindel VAF [0.02]"
    min_mapping_quality: "Minimum mapping quality for an\\nalignment to be used [1]"
    min_snv_quality: "Low confidence filtering minimum\\nSNV/MNV quality [100]"
    min_snv_vaf: "Low confidence filtering minimum\\nSNV/MNV VAF [0.005]"
    min_tumor_reads: "Low confidence filtering minimum\\ntumor reads [2]"
    out: "Output VCF file to write. Gz"
    reference: "Name of reference sample"
    reference_bam: "Path to reference bam file"
    tumor: "Name of tumor sample"
    tumor_bam: "Path to tumor bam file"
    sage_hotspot_application: "-coding_regions <arg>                Coding regions bed file to search\\nfor inframe indels"
    locations: "-max_het_binomial_likelihood <arg>   Up to 1 read of support for the ALT"
    supported_dot: "-ref_genome <arg>                    Path to the ref genome fasta file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}