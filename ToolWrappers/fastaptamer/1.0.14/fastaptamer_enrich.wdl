version 1.0

task FastaptamerEnrich {
  input {
    String? o
    File? z
    File? y
    File? x
    String fast_aptamer_cluster_dot
  }
  command <<<
    fastaptamer_enrich \
      ~{fast_aptamer_cluster_dot} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(z) then ("-z " +  '"' + z + '"') else ""} \
      ~{if defined(y) then ("-y " +  '"' + y + '"') else ""} \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    z: ""
    y: ""
    x: ""
    fast_aptamer_cluster_dot: "[-o OUTFILE]    = Plain text output file with tab separated values. REQUIRED"
  }
  output {
    File out_stdout = stdout()
  }
}