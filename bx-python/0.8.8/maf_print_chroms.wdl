version 1.0

task MafPrintChroms.py {
  input {
    String? refRefIndex
  }
  command <<<
    maf_print_chroms.py \
      ~{refRefIndex}
  >>>
}