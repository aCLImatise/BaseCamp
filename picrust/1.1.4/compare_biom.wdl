version 1.0

task CompareBiom.py {
  input {
    String expExpTraitTableFp
    String outputOutputFp
  }
  command <<<
    compare_biom.py \
      ~{if defined(expExpTraitTableFp) then ("--exp_trait_table_fp " +  '"' + expExpTraitTableFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}