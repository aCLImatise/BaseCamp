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
    meta_genome_otu_tables: ""
    full_help: ""
    quiet: ""
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}