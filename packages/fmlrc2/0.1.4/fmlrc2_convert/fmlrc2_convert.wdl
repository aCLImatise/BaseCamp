version 1.0

task Fmlrc2convert {
  input {
    String? raw_bwt_default
  }
  command <<<
    fmlrc2_convert \
      ~{if defined(raw_bwt_default) then ("--input " +  '"' + raw_bwt_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fmlrc2:0.1.4--heda7bfa_0"
  }
  parameter_meta {
    raw_bwt_default: "The raw BWT (default: stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}