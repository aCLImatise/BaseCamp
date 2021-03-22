version 1.0

task PycloneviWriteresultsfile {
  input {
    File? in_file
    File? out_file
    File? compress
  }
  command <<<
    pyclone_vi write_results_file \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if (compress) then "--compress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyclone-vi:0.1.1--pyh7b7c402_0"
  }
  parameter_meta {
    in_file: "Path to HDF5 format file produced by the `fit` command.\\n[required]"
    out_file: "Path to where results will be written in tsv format.\\n[required]"
    compress: "If set the output file will be compressed using gzip."
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
    File out_compress = "${in_compress}"
  }
}