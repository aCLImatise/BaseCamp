version 1.0

task RustSynergy.bak {
  input {
    String oO
    String? rustRustAminoFile
    String? rustRustTripeptideFile
  }
  command <<<
    rust_synergy.bak \
      ~{rustRustAminoFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{rustRustTripeptideFile}
  >>>
}