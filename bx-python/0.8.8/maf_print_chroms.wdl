version 1.0

task MafPrintChroms.py {
  input {
    String ref_index
  }
  command <<<
    maf_print_chroms.py \
      ~{ref_index}
  >>>
  parameter_meta {
    ref_index: ""
  }
}