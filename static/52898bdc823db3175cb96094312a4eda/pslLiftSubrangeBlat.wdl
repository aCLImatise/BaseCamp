version 1.0

task PslLiftSubrangeBlat {
  input {
    String? t_sizes
    String? q_sizes
    String is_psl
    String out_psl
  }
  command <<<
    pslLiftSubrangeBlat \
      ~{is_psl} \
      ~{out_psl} \
      ~{if defined(t_sizes) then ("-tSizes " +  '"' + t_sizes + '"') else ""} \
      ~{if defined(q_sizes) then ("-qSizes " +  '"' + q_sizes + '"') else ""}
  >>>
  parameter_meta {
    t_sizes: "- lift target side based on tName, using target sizes from this tab separated file."
    q_sizes: "- lift query side based on qName, using query sizes from this tab separated file."
    is_psl: ""
    out_psl: ""
  }
}