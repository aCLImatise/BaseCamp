version 1.0

task PsiCalculator.py {
  input {
    String? i
    String? e
    String? o
  }
  command <<<
    psiCalculator.py \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    e: ""
    o: ""
  }
}