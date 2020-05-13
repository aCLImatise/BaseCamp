version 1.0

task MetagenomeContributions.py {
  input {
    String inputInputOtuTable
    String outputOutputFp
  }
  command <<<
    metagenome_contributions.py \
      ~{if defined(inputInputOtuTable) then ("--input_otu_table " +  '"' + inputInputOtuTable + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}