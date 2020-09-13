version 1.0

task RapidVissh {
  input {
    Boolean? type
    File? out
    File? an_not
    File? rapid
  }
  command <<<
    rapidVis_sh \
      ~{if (type) then "--type" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(rapid) then ("--rapid " +  '"' + rapid + '"') else ""}
  >>>
  parameter_meta {
    type: "= stats/Compare - Choose basic statistics, or comparison plots"
    out: "=/path_to_output_directory/ : path to the output directory, directory will be created if non-existent"
    an_not: ": bed file with regions that should be visualised (Not required for comparison plots)"
    rapid: ": set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/) or put into PATH variable"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}