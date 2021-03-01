version 1.0

task BioconvertSniffer {
  input {
    String? verbosity
    Array[String] set_input_file
    File? quiet
  }
  command <<<
    bioconvert_sniffer \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(set_input_file) then ("--input " +  '"' + set_input_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbosity: "Set the outpout verbosity."
    set_input_file: "Set the input file."
    quiet: "simply return a two columns output with filename and\\nfound format."
  }
  output {
    File out_stdout = stdout()
    File out_quiet = "${in_quiet}"
  }
}