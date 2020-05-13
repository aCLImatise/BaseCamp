version 1.0

task N50 {
  input {
    String? typeType
    String? n50N50
    String? fullFull
    String? manualManual
  }
  command <<<
    n50 \
      ~{typeType} \
      ~{n50N50} \
      ~{fullFull} \
      ~{manualManual}
  >>>
}