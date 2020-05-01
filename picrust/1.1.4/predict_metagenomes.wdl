version 1.0

task PredictMetagenomes.py {
  input {
    String inputInputOtuTable
    String outputOutputMetaGenomeTable
  }
  command <<<
    predict_metagenomes.py \
      ~{if defined(inputInputOtuTable) then ("--input_otu_table " +  '"' + inputInputOtuTable + '"') else ""} \
      ~{if defined(outputOutputMetaGenomeTable) then ("--output_metagenome_table " +  '"' + outputOutputMetaGenomeTable + '"') else ""}
  >>>
}