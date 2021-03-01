version 1.0

task Vcf2dbpy {
  input {
    String take
    String a
    String vcf
    String and
    String create
    String gemini
    String compatible
    String database
  }
  command <<<
    vcf2db_py \
      ~{take} \
      ~{a} \
      ~{vcf} \
      ~{and} \
      ~{create} \
      ~{gemini} \
      ~{compatible} \
      ~{database}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    take: ""
    a: ""
    vcf: ""
    and: ""
    create: ""
    gemini: ""
    compatible: ""
    database: ""
  }
  output {
    File out_stdout = stdout()
  }
}