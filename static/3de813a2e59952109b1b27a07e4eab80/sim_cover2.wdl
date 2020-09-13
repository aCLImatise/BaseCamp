version 1.0

task Simcover2 {
  input {
    Int? set_overlap_length
    String coverage
    String read_len
    String genome_len
  }
  command <<<
    sim_cover2 \
      ~{coverage} \
      ~{read_len} \
      ~{genome_len} \
      ~{if defined(set_overlap_length) then ("-o " +  '"' + set_overlap_length + '"') else ""}
  >>>
  parameter_meta {
    set_overlap_length: "Set minimum overlap length to <n> (default = 40)"
    coverage: ""
    read_len: ""
    genome_len: ""
  }
  output {
    File out_stdout = stdout()
  }
}