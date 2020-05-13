version 1.0

task _epestfind {
  input {
    Boolean windowWindow
    Boolean orderOrder
  }
  command <<<
    _epestfind \
      ~{true="-window" false="" windowWindow} \
      ~{true="-order" false="" orderOrder}
  >>>
}