version 1.0

task Abyssjunction {
  input {
    File? ignore
    Boolean? verbose
    String overlap
    String scaffold
  }
  command <<<
    abyss_junction \
      ~{overlap} \
      ~{scaffold} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ignore: "ignore junctions seen in FILE"
    verbose: "display verbose output"
    overlap: "the overlap graph"
    scaffold: "a scaffold graph"
  }
  output {
    File out_stdout = stdout()
  }
}