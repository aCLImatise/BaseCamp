version 1.0

task Percentid {
  input {
    String? multiMultiFastaOrStockholmAlignment
  }
  command <<<
    percentid \
      ~{multiMultiFastaOrStockholmAlignment}
  >>>
}