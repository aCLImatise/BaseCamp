version 1.0

task NovoutilBgzf {
  input {
    Int? sets_number_server
    Int? sets_block_size
  }
  command <<<
    novoutil bgzf \
      ~{if defined(sets_number_server) then ("-c " +  '"' + sets_number_server + '"') else ""} \
      ~{if defined(sets_block_size) then ("-b " +  '"' + sets_block_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sets_number_server: "Sets the number of threads. Defaults to number of cores\\non the server."
    sets_block_size: "Sets the block size in kilobytes, defaults to 64K bytes.\\nIf set <=64K then files are compatible with tabix and BAM\\nspecifications.\\nAbove 64K may be useful for fast general purpose compression."
  }
  output {
    File out_stdout = stdout()
  }
}