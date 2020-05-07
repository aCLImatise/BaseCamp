version 1.0

task Lordfast {
  input {
    String indexIndex
  }
  command <<<
    lordfast \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""}
  >>>
}