version 1.0

task IgdiscoverDereplicate {
  input {
    String limitLimit
    Boolean trimTrimG
    Int minimumMinimumLength
    String barcodeBarcodeLength
    File jsonJson
  }
  command <<<
    igdiscover dereplicate \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{true="--trim-g" false="" trimTrimG} \
      ~{if defined(minimumMinimumLength) then ("--minimum-length " +  '"' + minimumMinimumLength + '"') else ""} \
      ~{if defined(barcodeBarcodeLength) then ("--barcode-length " +  '"' + barcodeBarcodeLength + '"') else ""} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""}
  >>>
}