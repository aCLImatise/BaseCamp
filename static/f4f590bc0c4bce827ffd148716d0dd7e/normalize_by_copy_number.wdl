version 1.0

task NormalizeByCopyNumber.py {
  input {
    String? input_otu_fp
    String? output_otu_fp
  }
  command <<<
    normalize_by_copy_number.py \
      ~{if defined(input_otu_fp) then ("--input_otu_fp " +  '"' + input_otu_fp + '"') else ""} \
      ~{if defined(output_otu_fp) then ("--output_otu_fp " +  '"' + output_otu_fp + '"') else ""}
  >>>
  parameter_meta {
    input_otu_fp: "the input otu table filepath in biom format [REQUIRED]"
    output_otu_fp: "the output otu table filepath in biom format [REQUIRED]"
  }
}