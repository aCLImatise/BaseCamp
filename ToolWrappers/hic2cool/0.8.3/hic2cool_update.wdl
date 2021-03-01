version 1.0

task Hic2coolUpdate {
  input {
    File? outfile
    Boolean? silent
    Boolean? warnings
    String in_file
  }
  command <<<
    hic2cool update \
      ~{in_file} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (warnings) then "--warnings" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "optional new output file path"
    silent: "if used, silence standard program output"
    warnings: "if used, print out non-critical WARNING messages,\\nwhich are hidden by default. Silent mode takes\\nprecedence over this\\n"
    in_file: "cooler input file path"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}