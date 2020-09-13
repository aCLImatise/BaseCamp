version 1.0

task HtsboxRazip {
  input {
    Boolean? write_keep_files
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
      ~{if (write_keep_files) then "-c" else ""} \
      ~{if (decompress) then "-d" else ""} \
      ~{if (list_compressed_contents) then "-l" else ""} \
      ~{if defined(decompress_int_position) then ("-b " +  '"' + decompress_int_position + '"') else ""} \
      ~{if defined(decompress_int_bytes) then ("-s " +  '"' + decompress_int_bytes + '"') else ""}
  >>>
  parameter_meta {
    write_keep_files: "write on standard output, keep original files unchanged"
    decompress: "decompress"
    list_compressed_contents: "list compressed file contents"
    decompress_int_position: "decompress at INT position in the uncompressed file"
    decompress_int_bytes: "decompress INT bytes in the uncompressed file"
    ra_zip: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}