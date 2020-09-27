version 1.0

task PhyluceAssemblyGetBedForGenomeEnabledTaxon {
  input {
    String? locus_db
    File? lastz_file_use
    String? tax_on_name
    File? output_bed_file
    String? verbosity
    File? log_path
    String? regex
    String _taxonname
    String var_8
  }
  command <<<
    phyluce_assembly_get_bed_for_genome_enabled_taxon \
      ~{_taxonname} \
      ~{var_8} \
      ~{if defined(locus_db) then ("--locus-db " +  '"' + locus_db + '"') else ""} \
      ~{if defined(lastz_file_use) then ("--lastz-file " +  '"' + lastz_file_use + '"') else ""} \
      ~{if defined(tax_on_name) then ("--taxon-name " +  '"' + tax_on_name + '"') else ""} \
      ~{if defined(output_bed_file) then ("--output " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""}
  >>>
  parameter_meta {
    locus_db: "The probe.matches.sqlite database"
    lastz_file_use: "The lastz file to use"
    tax_on_name: "The taxon name to search for in probe.matches.sqlite"
    output_bed_file: "The output BED file to create"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    regex: "A regular expression to apply to the probe names for\\nreplacement [default='^(uce-\\d+)(?:_p\\d+.*)'].\\n"
    _taxonname: "--taxon-name"
    var_8: "[--verbosity {INFO,WARN,CRITICAL}]"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}