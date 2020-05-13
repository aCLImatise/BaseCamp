version 1.0

task Metaxa2Dc {
  input {
    String oO
    String? inputInputFiles
  }
  command <<<
    metaxa2_dc \
      ~{inputInputFiles} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}