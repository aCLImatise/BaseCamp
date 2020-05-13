version 1.0

task Transfer2delivery.sh {
  input {
    String? runRunInfoTxt
  }
  command <<<
    transfer2delivery.sh \
      ~{runRunInfoTxt}
  >>>
}