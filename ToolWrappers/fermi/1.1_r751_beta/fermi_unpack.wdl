version 1.0

task FermiUnpack {
  input {
    Int? index_read_output
    Boolean? load_fmindex_memory
    String seqs_dot_bwt
  }
  command <<<
    fermi unpack \
      ~{seqs_dot_bwt} \
      ~{if defined(index_read_output) then ("-i " +  '"' + index_read_output + '"') else ""} \
      ~{if (load_fmindex_memory) then "-M" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index_read_output: "index of the read to output, starting from 0 [null]"
    load_fmindex_memory: "load the FM-index as a memory mapped file"
    seqs_dot_bwt: ""
  }
  output {
    File out_stdout = stdout()
  }
}