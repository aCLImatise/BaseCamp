version 1.0

task PsiPerGenepy {
  input {
    String? m
    File? o
    File? e
    File? g
  }
  command <<<
    psiPerGene_py \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    o: ""
    e: ""
    g: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}