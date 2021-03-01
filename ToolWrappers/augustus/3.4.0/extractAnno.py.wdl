version 1.0

task ExtractAnnopy {
  input {
    Array[String] chunks
  }
  command <<<
    extractAnno_py \
      ~{if defined(chunks) then ("--chunks " +  '"' + chunks + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    chunks: "a list of one or more positive integers indicating the\\nchunk/s for which we want to build a minimal\\nannotation from given Ensembl.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}