version 1.0

task RtgIndex {
  input {
    String? format
    File? input_list_file
  }
  command <<<
    rtg index \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_list_file) then ("--input-list-file " +  '"' + input_list_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "format of input to index. Allowed values are [sam,\\nbam, cram, sv, coveragetsv, bed, vcf, auto]\\n(Default is auto)"
    input_list_file: "file containing a list of block compressed files\\n(1 per line) containing genome position data\\nFILE+                  block compressed files containing data to be\\nindexed. May be specified 0 or more times"
  }
  output {
    File out_stdout = stdout()
  }
}