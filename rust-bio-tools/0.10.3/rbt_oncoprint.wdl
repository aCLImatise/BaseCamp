version 1.0

task RbtOncoprint {
  input {
    Boolean? vep_annotation
    String? flags
  }
  command <<<
    rbt oncoprint \
      ~{flags} \
      ~{if (vep_annotation) then "--vep-annotation" else ""}
  >>>
  parameter_meta {
    vep_annotation: "Annotation field gets parsed as definded by VEP."
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}