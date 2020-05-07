version 1.0

task PslScore {
  input {
    File? fileFilePsl
    String? moreMoreFilesPsl
  }
  command <<<
    pslScore \
      ~{fileFilePsl} \
      ~{moreMoreFilesPsl}
  >>>
}