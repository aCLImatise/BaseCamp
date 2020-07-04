version 1.0

task Vcf2db.py {
  input {
    String? expand
    String take
    String var_2
    String vcf
    String and
    String create
    String var_6
    String gemini
    String compatible
    String database
  }
  command <<<
    vcf2db.py \
      ~{take} \
      ~{var_2} \
      ~{vcf} \
      ~{and} \
      ~{create} \
      ~{var_6} \
      ~{gemini} \
      ~{compatible} \
      ~{database} \
      ~{if defined(expand) then ("--expand " +  '"' + expand + '"') else ""}
  >>>
  parameter_meta {
    expand: "sample columns to expand into their own tables"
    take: ""
    var_2: ""
    vcf: ""
    and: ""
    create: ""
    var_6: ""
    gemini: ""
    compatible: ""
    database: ""
  }
}