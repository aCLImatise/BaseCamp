version 1.0

task Centrifugecompresspl {
  input {
    Boolean? no_dust_masker
    Int? maxg
    Int? t
    Boolean? no_compress
    String? o
    String? var_map
    String path_to_download_files
    String path_to_tax_no_no_my
  }
  command <<<
    centrifuge_compress_pl \
      ~{path_to_download_files} \
      ~{path_to_tax_no_no_my} \
      ~{if (no_dust_masker) then "-noDustmasker" else ""} \
      ~{if defined(maxg) then ("-maxG " +  '"' + maxg + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if (no_compress) then "-noCompress" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(var_map) then ("-map " +  '"' + var_map + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/centrifuge-core:1.0.4_beta--he513fc3_0"
  }
  parameter_meta {
    no_dust_masker: ""
    maxg: ""
    t: ""
    no_compress: ""
    o: ""
    var_map: ""
    path_to_download_files: ""
    path_to_tax_no_no_my: ""
  }
  output {
    File out_stdout = stdout()
  }
}