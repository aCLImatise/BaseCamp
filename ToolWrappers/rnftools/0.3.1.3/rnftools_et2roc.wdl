version 1.0

task RnftoolsEt2roc {
  input {
    File? et
    File? roc
  }
  command <<<
    rnftools et2roc \
      ~{if defined(et) then ("--et " +  '"' + et + '"') else ""} \
      ~{if defined(roc) then ("--roc " +  '"' + roc + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    et: "Input ET file (evaluated read tuples, - for standard\\ninput)."
    roc: "Output ROC file (evaluated reads, - for standard\\noutput).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_roc = "${in_roc}"
  }
}