version 1.0

task VcfConcat {
  input {
    Boolean? check_columns
    File? files
    Boolean? pad_missing
    Int? merge_sort
    String a_dot_vcf_do_tgz
    String bdotvcfdotgz
    String cdotvcfdotgz
  }
  command <<<
    vcf-concat \
      ~{a_dot_vcf_do_tgz} \
      ~{bdotvcfdotgz} \
      ~{cdotvcfdotgz} \
      ~{true="--check-columns" false="" check_columns} \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{true="--pad-missing" false="" pad_missing} \
      ~{if defined(merge_sort) then ("--merge-sort " +  '"' + merge_sort + '"') else ""}
  >>>
  parameter_meta {
    check_columns: "Do not concatenate, only check if the columns agree."
    files: "Read the list of files from a file."
    pad_missing: "Write '.' in place of missing columns. Useful for joining chrY with the rest."
    merge_sort: "Allow small overlaps in N consecutive files."
    a_dot_vcf_do_tgz: ""
    bdotvcfdotgz: ""
    cdotvcfdotgz: ""
  }
}