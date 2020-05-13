version 1.0

task PhyluceAssemblyGetFastqLengths {
  input {
    String inputInput
    Boolean csvCsv
  }
  command <<<
    phyluce_assembly_get_fastq_lengths \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--csv" false="" csvCsv}
  >>>
}