version 1.0

task Simcoverdepth {
  input {
    Boolean? adjust_genome_length
    Int? set_overlap_length
  }
  command <<<
    sim_cover_depth \
      ~{if (adjust_genome_length) then "-m" else ""} \
      ~{if defined(set_overlap_length) then ("-o " +  '"' + set_overlap_length + '"') else ""}
  >>>
  parameter_meta {
    adjust_genome_length: "Adjust genome length to get best match to distrib\\ninput from stdin"
    set_overlap_length: "Set minimum overlap length to <n> (default = 40)"
  }
  output {
    File out_stdout = stdout()
  }
}