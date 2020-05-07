version 1.0

task Gapcleaner {
  input {
    String? multiMultiFastaOrStockholmAlignment
  }
  command <<<
    gapcleaner \
      ~{multiMultiFastaOrStockholmAlignment}
  >>>
}