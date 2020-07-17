version 1.0

task MergeContigs {
  input {
    Boolean? output_outprefixmali_file
    String coords_file
    String cco_file
    String bank_name
  }
  command <<<
    merge-contigs \
      ~{coords_file} \
      ~{cco_file} \
      ~{bank_name} \
      ~{true="-a" false="" output_outprefixmali_file}
  >>>
  parameter_meta {
    output_outprefixmali_file: "Output the <out-prefix>.mali file"
    coords_file: ""
    cco_file: ""
    bank_name: ""
  }
}