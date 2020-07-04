version 1.0

task PsiPerGene.py {
  input {
    String? g
    String? e
    String? o
    String? m
  }
  command <<<
    psiPerGene.py \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    e: ""
    o: ""
    m: ""
  }
}