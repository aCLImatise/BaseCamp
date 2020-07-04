version 1.0

task RnftoolsSam2roc {
  input {
    File? sam
    File? roc
    Int? allowed_delta
  }
  command <<<
    rnftools sam2roc \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(roc) then ("--roc " +  '"' + roc + '"') else ""} \
      ~{if defined(allowed_delta) then ("--allowed-delta " +  '"' + allowed_delta + '"') else ""}
  >>>
  parameter_meta {
    sam: "SAM/BAM with aligned RNF reads(- for standard input)."
    roc: "Output ROC file (- for standard output)."
    allowed_delta: "Tolerance of difference of coordinates between true (i.e., expected) alignment and real alignment (very important parameter!) (default: 5)."
  }
}