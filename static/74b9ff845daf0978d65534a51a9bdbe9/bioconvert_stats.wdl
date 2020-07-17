version 1.0

task BioconvertStats {
  input {
    String? v
    Boolean? no_plot
    String bio_convert
  }
  command <<<
    bioconvert_stats \
      ~{bio_convert} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{true="--no-plot" false="" no_plot}
  >>>
  parameter_meta {
    v: ""
    no_plot: ""
    bio_convert: ""
  }
}