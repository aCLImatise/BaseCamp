version 1.0

task MsiRes2taxatable {
  input {
    File? tsv_file_name
    File? out
  }
  command <<<
    msi_res2taxatable \
      ~{if defined(tsv_file_name) then ("--input " +  '"' + tsv_file_name + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  parameter_meta {
    tsv_file_name: "TSV file name"
    out: "output file prefix"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}