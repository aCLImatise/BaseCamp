version 1.0

task FRC {
  input {
    String? pe_sam
    String? pe_max_insert
    String? mp_sam
    String? mp_max_insert
    String? genome_size
    String? header_output_file
    String? ce_stats_pe_min
    String? ce_stats_pe_max
    String? ce_stats_mp_min
    String? ce_stats_mp_max
  }
  command <<<
    FRC \
      ~{if defined(pe_sam) then ("--pe-sam " +  '"' + pe_sam + '"') else ""} \
      ~{if defined(pe_max_insert) then ("--pe-max-insert " +  '"' + pe_max_insert + '"') else ""} \
      ~{if defined(mp_sam) then ("--mp-sam " +  '"' + mp_sam + '"') else ""} \
      ~{if defined(mp_max_insert) then ("--mp-max-insert " +  '"' + mp_max_insert + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(header_output_file) then ("--output " +  '"' + header_output_file + '"') else ""} \
      ~{if defined(ce_stats_pe_min) then ("--CEstats-PE-min " +  '"' + ce_stats_pe_min + '"') else ""} \
      ~{if defined(ce_stats_pe_max) then ("--CEstats-PE-max " +  '"' + ce_stats_pe_max + '"') else ""} \
      ~{if defined(ce_stats_mp_min) then ("--CEstats-MP-min " +  '"' + ce_stats_mp_min + '"') else ""} \
      ~{if defined(ce_stats_mp_max) then ("--CEstats-MP-max " +  '"' + ce_stats_mp_max + '"') else ""}
  >>>
  parameter_meta {
    pe_sam: "paired end alignment file (in sam or bam format).  Orientation must be -> <-"
    pe_max_insert: "maximum allowed insert size for PE (to filter out  outleyers)"
    mp_sam: "mate pairs alignment file. (in sam or bam format).  Orientation must be <- ->"
    mp_max_insert: "maximum allowed insert size for MP (to filter out  outleyers)"
    genome_size: "estimated genome size (if not supplied genome size is  believed to be assembly length"
    header_output_file: "Header output file names (default FRC.txt and  Features.txt)"
    ce_stats_pe_min: "minimum allowed CE_stats in PE library"
    ce_stats_pe_max: "maximum allowed CE_stats in PE library"
    ce_stats_mp_min: "minimum allowed CE_stats in MP library"
    ce_stats_mp_max: "maximum allowed CE_stats in MP library"
  }
}