version 1.0

task GetgffinfoDbm {
  input {
    Boolean? verbose
    Directory? output_dir
    String? gff_file
  }
  command <<<
    get_gff_info dbm \
      ~{gff_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    output_dir: "Directory for the database  [default: gff-dbm]"
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}