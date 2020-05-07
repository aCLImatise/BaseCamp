version 1.0

task Vcf2db.py {
  input {
    String expandExpand
  }
  command <<<
    vcf2db.py \
      ~{if defined(expandExpand) then ("--expand " +  '"' + expandExpand + '"') else ""}
  >>>
}