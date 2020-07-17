version 1.0

task PhyluceAssemblyGetBedForGenomeEnabledTaxon {
  input {
    String? locus_db
    String? last_z_file
    String? tax_on_name
    String? output_bed_file
    String? verbosity
    String? log_path
    String? regex
  }
  command <<<
    phyluce_assembly_get_bed_for_genome_enabled_taxon \
      ~{if defined(locus_db) then ("--locus-db " +  '"' + locus_db + '"') else ""} \
      ~{if defined(last_z_file) then ("--lastz-file " +  '"' + last_z_file + '"') else ""} \
      ~{if defined(tax_on_name) then ("--taxon-name " +  '"' + tax_on_name + '"') else ""} \
      ~{if defined(output_bed_file) then ("--output " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""}
  >>>
  parameter_meta {
    locus_db: "The probe.matches.sqlite database"
    last_z_file: "The lastz file to use"
    tax_on_name: "The taxon name to search for in probe.matches.sqlite"
    output_bed_file: "The output BED file to create"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    regex: "A regular expression to apply to the probe names for replacement [default='^(uce-\d+)(?:_p\d+.*)']."
  }
}