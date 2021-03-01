version 1.0

task Simshotgun {
  input {
    Int? set_minimum_reads
    Int? set_minimum_overlap
    Int? set_readlength_std
    String coverage
    String read_len
    String genome_len
  }
  command <<<
    sim_shotgun \
      ~{coverage} \
      ~{read_len} \
      ~{genome_len} \
      ~{if defined(set_minimum_reads) then ("-c " +  '"' + set_minimum_reads + '"') else ""} \
      ~{if defined(set_minimum_overlap) then ("-o " +  '"' + set_minimum_overlap + '"') else ""} \
      ~{if defined(set_readlength_std) then ("-s " +  '"' + set_readlength_std + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_minimum_reads: "Set minimum reads in a contig to <n> (default = 2)"
    set_minimum_overlap: "Set minimum overlap length to <n> (default = 40)"
    set_readlength_std: "Set read-length std deviation to <n> (default = 0)"
    coverage: ""
    read_len: ""
    genome_len: ""
  }
  output {
    File out_stdout = stdout()
  }
}