version 1.0

task AssignTaxonomy.py {
  input {
    String inputInputFastAFp
  }
  command <<<
    assign_taxonomy.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""}
  >>>
}