version 1.0

task BioconvertStats {
  input {
    Boolean? no_plot
    String? v
    String bio_convert
  }
  command <<<
    bioconvert_stats \
      ~{bio_convert} \
      ~{if (no_plot) then "--no-plot" else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""}
  >>>
  parameter_meta {
    no_plot: ""
    v: ""
    bio_convert: ""
  }
  output {
    File out_stdout = stdout()
  }
}