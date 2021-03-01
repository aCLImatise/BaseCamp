version 1.0

task PoretoolsSquiggle {
  input {
    Boolean? quiet
    File? save_as
    Int? num_facets
    Boolean? theme_bw
    String files
  }
  command <<<
    poretools squiggle \
      ~{files} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(save_as) then ("--saveas " +  '"' + save_as + '"') else ""} \
      ~{if defined(num_facets) then ("--num-facets " +  '"' + num_facets + '"') else ""} \
      ~{if (theme_bw) then "--theme-bw" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    save_as: "Save the squiggle plot to a file."
    num_facets: "The number of plot facets (sub-plots). More is better\\nfor long reads. (def=6)"
    theme_bw: "Use a black and white theme."
    files: "The input FAST5 files."
  }
  output {
    File out_stdout = stdout()
  }
}