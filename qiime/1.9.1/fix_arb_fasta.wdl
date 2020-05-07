version 1.0

task FixArbFasta.py {
  input {
    String inputInputFastAFp
  }
  command <<<
    fix_arb_fasta.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""}
  >>>
}