version 1.0

task Epestfind {
  input {
    Boolean windowWindow
    Boolean orderOrder
  }
  command <<<
    epestfind \
      ~{true="-window" false="" windowWindow} \
      ~{true="-order" false="" orderOrder}
  >>>
}