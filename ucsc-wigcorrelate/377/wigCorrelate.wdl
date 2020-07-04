version 1.0

task WigCorrelate {
  input {
    String? clamp_max
    String n_do_twig
  }
  command <<<
    wigCorrelate \
      ~{n_do_twig} \
      ~{if defined(clamp_max) then ("-clampMax " +  '"' + clamp_max + '"') else ""}
  >>>
  parameter_meta {
    clamp_max: "- values larger than this are clipped to this value"
    n_do_twig: ""
  }
}