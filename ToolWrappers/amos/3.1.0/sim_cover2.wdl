version 1.0

task Simcover2 {
  input {
    Int? set_minimum_overlap
    String coverage
    String read_len
    String genome_len
  }
  command <<<
    sim_cover2 \
      ~{coverage} \
      ~{read_len} \
      ~{genome_len} \
      ~{if defined(set_minimum_overlap) then ("-o " +  '"' + set_minimum_overlap + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_minimum_overlap: "Set minimum overlap length to <n> (default = 40)"
    coverage: ""
    read_len: ""
    genome_len: ""
  }
  output {
    File out_stdout = stdout()
  }
}