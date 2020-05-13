version 1.0

task M9BBtopMsa.pl {
  input {
    String maskedMaskedLibOut
    String? fastFastAM9OutputFile
  }
  command <<<
    m9B_btop_msa.pl \
      ~{fastFastAM9OutputFile} \
      ~{if defined(maskedMaskedLibOut) then ("--masked_lib_out " +  '"' + maskedMaskedLibOut + '"') else ""}
  >>>
}