version 1.0

task SinglemAppraise {
  input {
    Array[String] meta_genome_otu_tables
    Boolean? full_help
    Boolean? quiet
    Boolean? debug
  }
  command <<<
    singlem appraise \
      ~{if defined(meta_genome_otu_tables) then ("--metagenome_otu_tables " +  '"' + meta_genome_otu_tables + '"') else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    meta_genome_otu_tables: "[--genome_otu_tables GENOME_OTU_TABLES [GENOME_OTU_TABLES ...]]\\n[--assembly_otu_tables ASSEMBLY_OTU_TABLES [ASSEMBLY_OTU_TABLES ...]]\\n[--imperfect] [--sequence_identity SEQUENCE_IDENTITY]\\n[--plot PLOT] [--plot_marker PLOT_MARKER]\\n[--plot_basename PLOT_BASENAME]\\n[--output_binned_otu_table OUTPUT_BINNED_OTU_TABLE]\\n[--output_unbinned_otu_table OUTPUT_UNBINNED_OTU_TABLE]\\n[--output_assembled_otu_table OUTPUT_ASSEMBLED_OTU_TABLE]\\n[--output_unaccounted_for_otu_table OUTPUT_UNACCOUNTED_FOR_OTU_TABLE]"
    full_help: ""
    quiet: ""
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}