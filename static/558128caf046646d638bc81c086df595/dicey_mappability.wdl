version 1.0

task DiceyMappability {
  input {
    File? arg_gzipped_output
    Boolean? arg_read_length
    Boolean? arg_chromosome_index
    Boolean? arg_chunk_start
    Boolean? arg_chunk_end
    Boolean? arg_max_edit
    Boolean? arg_max_neighborhood
    String danio_rerio_dot_fado_tgz
  }
  command <<<
    dicey mappability \
      ~{danio_rerio_dot_fado_tgz} \
      ~{if (arg_gzipped_output) then "-o" else ""} \
      ~{if (arg_read_length) then "-r" else ""} \
      ~{if (arg_chromosome_index) then "-c" else ""} \
      ~{if (arg_chunk_start) then "-m" else ""} \
      ~{if (arg_chunk_end) then "-n" else ""} \
      ~{if (arg_max_edit) then "-e" else ""} \
      ~{if (arg_max_neighborhood) then "-x" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_gzipped_output: "[ --outfile ] arg (=\\\"map.fa.gz\\\")   gzipped output file"
    arg_read_length: "[ --readlength ] arg (=51)         read length"
    arg_chromosome_index: "[ --chromosome ] arg (=-1)         chromosome index (-1: all)"
    arg_chunk_start: "[ --chunkStart ] arg (=-1)         chunk start (optional)"
    arg_chunk_end: "[ --chunkEnd ] arg (=-1)           chunk end (optional)"
    arg_max_edit: "[ --maxEditDistance ] arg (=1)     max. edit distance"
    arg_max_neighborhood: "[ --maxNeighborhood ] arg (=10000) max. neighborhood size"
    danio_rerio_dot_fado_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_gzipped_output = "${in_arg_gzipped_output}"
  }
}