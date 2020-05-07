version 1.0

task Bismark2bedGraph {
  input {
    String oO
    String? methylationMethylation
    String? extractorExtractor
    String? inputInput
    File? filesFiles
  }
  command <<<
    bismark2bedGraph \
      ~{methylationMethylation} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{extractorExtractor} \
      ~{inputInput} \
      ~{filesFiles}
  >>>
}