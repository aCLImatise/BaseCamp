version 1.0

task OtuToTaxName.py {
  input {
    String otuOtuTable
    String otuOtuIdFp
    String outputOutputFp
    Boolean reverseReverseLookup
  }
  command <<<
    otu_to_tax_name.py \
      ~{if defined(otuOtuTable) then ("--otu_table " +  '"' + otuOtuTable + '"') else ""} \
      ~{if defined(otuOtuIdFp) then ("--otu_id_fp " +  '"' + otuOtuIdFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""} \
      ~{true="--reverse_lookup" false="" reverseReverseLookup}
  >>>
}