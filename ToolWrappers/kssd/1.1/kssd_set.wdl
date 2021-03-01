version 1.0

task KssdSet {
  input {
    Boolean? union
    String? int_sect
    String? subtract
    Directory? outdir
    String? option_dot_dot_dot
    String combined_sketch
  }
  command <<<
    kssd set \
      ~{option_dot_dot_dot} \
      ~{combined_sketch} \
      ~{if (union) then "--union" else ""} \
      ~{if defined(int_sect) then ("--intsect " +  '"' + int_sect + '"') else ""} \
      ~{if defined(subtract) then ("--subtract " +  '"' + subtract + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    union: "get union set of the sketches."
    int_sect: "intersect with the pan-sketch for all input\\nsketches."
    subtract: "subtract the pan-sketch from all input sketches."
    outdir: "specify the output directory."
    option_dot_dot_dot: ""
    combined_sketch: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}