version 1.0

task PhyluceAssemblyGetFastaLengths {
  input {
    String inputInput
    Boolean csvCsv
  }
  command <<<
    phyluce_assembly_get_fasta_lengths \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--csv" false="" csvCsv}
  >>>
}