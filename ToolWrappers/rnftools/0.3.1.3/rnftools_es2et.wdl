version 1.0

task RnftoolsEs2et {
  input {
    File? es
    File? et
  }
  command <<<
    rnftools es2et \
      ~{if defined(es) then ("--es " +  '"' + es + '"') else ""} \
      ~{if defined(et) then ("--et " +  '"' + et + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    es: "Input ES file (evaluated segments, - for standard\\ninput)."
    et: "Output ET file (evaluated read tuples, - for standard\\noutput).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_et = "${in_et}"
  }
}