version 1.0

task PsiCalculatorpy {
  input {
    File? o
    File? e
    File? i
  }
  command <<<
    psiCalculator_py \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    e: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}