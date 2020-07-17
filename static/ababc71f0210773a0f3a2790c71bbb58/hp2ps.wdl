version 1.0

task Hp2ps {
  input {
    Boolean? sort_standard_deviation
    Boolean? ef
    Boolean? produce_output_suitable
    Boolean? sort_identifier_string
    Boolean? multipage_output_key
    String? mn
    String? m_zero
    Boolean? use_previous_shading
    Boolean? use_small_box
    String? tf
    Boolean? traditional
    Boolean? colour_ouput
    Boolean? b
  }
  command <<<
    hp2ps \
      ~{true="-d" false="" sort_standard_deviation} \
      ~{true="-ef" false="" ef} \
      ~{true="-g" false="" produce_output_suitable} \
      ~{true="-i" false="" sort_identifier_string} \
      ~{true="-M" false="" multipage_output_key} \
      ~{if defined(mn) then ("-mn " +  '"' + mn + '"') else ""} \
      ~{if defined(m_zero) then ("-m0 " +  '"' + m_zero + '"') else ""} \
      ~{true="-p" false="" use_previous_shading} \
      ~{true="-s" false="" use_small_box} \
      ~{if defined(tf) then ("-tf " +  '"' + tf + '"') else ""} \
      ~{true="-y" false="" traditional} \
      ~{true="-c" false="" colour_ouput} \
      ~{true="-b" false="" b}
  >>>
  parameter_meta {
    sort_standard_deviation: "sort by standard deviation"
    ef: "[in|mm|pt] produce Encapsulated PostScript f units wide (f > 2 inches)"
    produce_output_suitable: "produce output suitable for GHOSTSCRIPT previever"
    sort_identifier_string: "[+|-] sort by identifier string (-i+ gives greatest on top) "
    multipage_output_key: "multi-page output (key separate from graph)"
    mn: "maximum of n bands (default & max 20)"
    m_zero: "the band limit altogether"
    use_previous_shading: "use previous scaling, shading and ordering"
    use_small_box: "use small title box"
    tf: "trace bands which sum below f% (default 1%, max 5%)"
    traditional: "traditional"
    colour_ouput: "colour ouput"
    b: ""
  }
}