version 1.0

task Simshotgun {
  input {
    Int? set_minimum_reads
    Int? set_overlap_length
    Int? set_readlength_deviation
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
      ~{if defined(set_overlap_length) then ("-o " +  '"' + set_overlap_length + '"') else ""} \
      ~{if defined(set_readlength_deviation) then ("-s " +  '"' + set_readlength_deviation + '"') else ""}
  >>>
  parameter_meta {
    set_minimum_reads: "Set minimum reads in a contig to <n> (default = 2)"
    set_overlap_length: "Set minimum overlap length to <n> (default = 40)"
    set_readlength_deviation: "Set read-length std deviation to <n> (default = 0)"
    coverage: ""
    read_len: ""
    genome_len: ""
  }
  output {
    File out_stdout = stdout()
  }
}