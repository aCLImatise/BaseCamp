version 1.0

task HtsboxRazip {
  input {
    Boolean? write_standard_output
    Boolean? decompress
    Boolean? list_compressed_contents
    Int? decompress_int_position
    Int? decompress_int_bytes
    String ra_zip
    File? file
  }
  command <<<
    htsbox razip \
      ~{ra_zip} \
      ~{file} \
      ~{true="-c" false="" write_standard_output} \
      ~{true="-d" false="" decompress} \
      ~{true="-l" false="" list_compressed_contents} \
      ~{if defined(decompress_int_position) then ("-b " +  '"' + decompress_int_position + '"') else ""} \
      ~{if defined(decompress_int_bytes) then ("-s " +  '"' + decompress_int_bytes + '"') else ""}
  >>>
  parameter_meta {
    write_standard_output: "write on standard output, keep original files unchanged"
    decompress: "decompress"
    list_compressed_contents: "list compressed file contents"
    decompress_int_position: "decompress at INT position in the uncompressed file"
    decompress_int_bytes: "decompress INT bytes in the uncompressed file"
    ra_zip: ""
    file: ""
  }
}