version 1.0

task CompareBiom.py {
  input {
    String? exp_trait_table_fp
    String? output_fp
  }
  command <<<
    compare_biom.py \
      ~{if defined(exp_trait_table_fp) then ("--exp_trait_table_fp " +  '"' + exp_trait_table_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""}
  >>>
  parameter_meta {
    exp_trait_table_fp: "the expected trait table (biom format) [REQUIRED]"
    output_fp: "the output file [REQUIRED]"
  }
}