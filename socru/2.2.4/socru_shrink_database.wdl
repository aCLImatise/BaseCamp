version 1.0

task SocruShrinkDatabase {
  input {
    Int? min_fragment_size
    Boolean? debug
    Boolean? verbose
    String blast_results
    String input_database
    String output_database
    String exist
  }
  command <<<
    socru_shrink_database \
      ~{blast_results} \
      ~{input_database} \
      ~{output_database} \
      ~{exist} \
      ~{if defined(min_fragment_size) then ("--min_fragment_size " +  '"' + min_fragment_size + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    min_fragment_size: "Minimum fragment size in bases (default: 100000)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
    blast_results: "Blast results file from running socru -b xxx against\\nmultiple assemblies"
    input_database: "Directory containing database to shrink"
    output_database: "Output directory for new database, it must not already"
    exist: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}