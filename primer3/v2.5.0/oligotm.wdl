version 1.0

task Oligotm {
  input {
    String breslauer_et_al
    String use_nearest_parameters
    String schildkraut_lifson_used
    String santalucia_default_recommended
    String owczarzy_et_al
  }
  command <<<
    oligotm \
      ~{breslauer_et_al} \
      ~{use_nearest_parameters} \
      ~{schildkraut_lifson_used} \
      ~{santalucia_default_recommended} \
      ~{owczarzy_et_al}
  >>>
  parameter_meta {
    breslauer_et_al: "Breslauer et al., 1986 and Rychlik et al., 1990 (used by primer3 up to and including release 1.1.0)."
    use_nearest_parameters: "Use nearest neighbor parameters from SantaLucia 1998 *This is the default and recommended value*"
    schildkraut_lifson_used: "Schildkraut and Lifson 1965, used by primer3 up to  and including release 1.1.0."
    santalucia_default_recommended: "SantaLucia 1998 *This is the default and recommended value*"
    owczarzy_et_al: "Owczarzy et al., 2004"
  }
}