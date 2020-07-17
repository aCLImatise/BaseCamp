version 1.0

task RnftoolsSam2es {
  input {
    File? sam
    File? es
    Int? allowed_delta
  }
  command <<<
    rnftools sam2es \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(es) then ("--es " +  '"' + es + '"') else ""} \
      ~{if defined(allowed_delta) then ("--allowed-delta " +  '"' + allowed_delta + '"') else ""}
  >>>
  parameter_meta {
    sam: "SAM/BAM with aligned RNF reads(- for standard input)."
    es: "Output ES file (evaluated segments, - for standard output)."
    allowed_delta: "Tolerance of difference of coordinates between true (i.e., expected) alignment and real alignment (very important parameter!) (default: 5)."
  }
}