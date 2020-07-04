version 1.0

task LexmaprInputFile {
  input {
    Boolean? o
    Boolean? f
    String? c
    Boolean? b
    Boolean? no_cache
    Boolean? v
    String lex_map_r
    String? var_output
  }
  command <<<
    lexmapr input_file \
      ~{lex_map_r} \
      ~{var_output} \
      ~{true="-o" false="" o} \
      ~{true="-f" false="" f} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{true="-b" false="" b} \
      ~{true="--no-cache" false="" no_cache} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    o: ""
    f: ""
    c: ""
    b: ""
    no_cache: ""
    v: ""
    lex_map_r: ""
    var_output: ""
  }
}