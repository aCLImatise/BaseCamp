version 1.0

task FermiUnpack {
  input {
    Int? index_read_starting
    Boolean? load_fmindex_memory
    String seqs_dot_bwt
  }
  command <<<
    fermi unpack \
      ~{seqs_dot_bwt} \
      ~{if defined(index_read_starting) then ("-i " +  '"' + index_read_starting + '"') else ""} \
      ~{if (load_fmindex_memory) then "-M" else ""}
  >>>
  parameter_meta {
    index_read_starting: "index of the read to output, starting from 0 [null]"
    load_fmindex_memory: "load the FM-index as a memory mapped file"
    seqs_dot_bwt: ""
  }
  output {
    File out_stdout = stdout()
  }
}