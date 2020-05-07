version 1.0

task BiosailsBioxRender.py {
  input {
    String tT
    String jJ
  }
  command <<<
    biosails-biox-render.py \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""}
  >>>
}