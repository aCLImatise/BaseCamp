version 1.0

task Mergecontigs {
  input {
    File? output_outprefixmali_file
    File coords_file
    File cco_file
    String bank_name
  }
  command <<<
    merge_contigs \
      ~{coords_file} \
      ~{cco_file} \
      ~{bank_name} \
      ~{if (output_outprefixmali_file) then "-a" else ""}
  >>>
  parameter_meta {
    output_outprefixmali_file: "Output the <out-prefix>.mali file"
    coords_file: ""
    cco_file: ""
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_outprefixmali_file = "${in_output_outprefixmali_file}"
  }
}