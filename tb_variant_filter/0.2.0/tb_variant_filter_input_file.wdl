version 1.0

task TbVariantFilterInputFile {
  input {
    String? region_filter
    String tb_variant_filter
  }
  command <<<
    tb_variant_filter input_file \
      ~{tb_variant_filter} \
      ~{if defined(region_filter) then ("--region_filter " +  '"' + region_filter + '"') else ""}
  >>>
  parameter_meta {
    region_filter: ""
    tb_variant_filter: ""
  }
  output {
    File out_stdout = stdout()
  }
}