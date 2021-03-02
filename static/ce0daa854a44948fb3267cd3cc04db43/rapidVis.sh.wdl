version 1.0

task RapidVissh {
  input {
    File? out
    File? an_not
    File? rapid
  }
  command <<<
    rapidVis_sh \
      ~{if (out) then "--out" else ""} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(rapid) then ("--rapid " +  '"' + rapid + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "=/path_to_output_directory/ : path to the output directory, directory will be created if non-existent"
    an_not: ": bed file with regions that should be visualised (Not required for comparison plots)"
    rapid: "/ : set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/) or put into PATH variable"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}