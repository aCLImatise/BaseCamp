version 1.0

task Tabutils {
  input {
    String? viewView
    String? lessLess
  }
  command <<<
    tabutils \
      ~{viewView} \
      ~{lessLess}
  >>>
}