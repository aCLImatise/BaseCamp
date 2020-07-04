version 1.0

task SimCover2 {
  input {
    String? set_minimum_length
    String coverage
    String read_len
    String genome_len
  }
  command <<<
    sim-cover2 \
      ~{coverage} \
      ~{read_len} \
      ~{genome_len} \
      ~{if defined(set_minimum_length) then ("-o " +  '"' + set_minimum_length + '"') else ""}
  >>>
  parameter_meta {
    set_minimum_length: "Set minimum overlap length to <n> (default = 40)"
    coverage: ""
    read_len: ""
    genome_len: ""
  }
}