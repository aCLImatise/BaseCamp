version 1.0

task Sortsam {
  input {
    String sortSort
    String sortSort
  }
  command <<<
    sortsam \
      ~{if defined(sortSort) then ("-- Sort " +  '"' + sortSort + '"') else ""} \
      ~{if defined(sortSort) then ("-- Sort " +  '"' + sortSort + '"') else ""}
  >>>
}