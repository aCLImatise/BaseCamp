version 1.0

task GraphlanAnnotate.py {
  input {
    String anAnNot
    String? inputInputTree
    String? outputOutputTree
  }
  command <<<
    graphlan_annotate.py \
      ~{inputInputTree} \
      ~{if defined(anAnNot) then ("--annot " +  '"' + anAnNot + '"') else ""} \
      ~{outputOutputTree}
  >>>
}