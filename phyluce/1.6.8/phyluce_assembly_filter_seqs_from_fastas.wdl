version 1.0

task PhyluceAssemblyFilterSeqsFromFastas {
  input {
    String? proportion
    String? count
    String? var_input
    Boolean? var_output
  }
  command <<<
    phyluce_assembly_filter_seqs_from_fastas \
      ~{if defined(proportion) then ("--proportion " +  '"' + proportion + '"') else ""} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{true="--output" false="" var_output}
  >>>
  parameter_meta {
    proportion: "Proportion of the median length that will serve as cut off (default=0.5)"
    count: "Number of sequences per locus that will serve as cut off (default=4)."
    var_input: ""
    var_output: ""
  }
}