version 1.0

task Freec {
  input {
    String? sample
    File? conf
    String or
  }
  command <<<
    freec \
      ~{or} \
      ~{if defined(sample) then ("-sample " +  '"' + sample + '"') else ""} \
      ~{if defined(conf) then ("-conf " +  '"' + conf + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sample: ""
    conf: ""
    or: "freec -conf <config file> -sample <mySample.bam> -control <myControl.bam>"
  }
  output {
    File out_stdout = stdout()
  }
}