version 1.0

task VcfConcat {
  input {
    Boolean checkCheckColumns
    File filesFiles
    Boolean padPadMissing
    Int mergeMergeSort
  }
  command <<<
    vcf-concat \
      ~{true="--check-columns" false="" checkCheckColumns} \
      ~{if defined(filesFiles) then ("--files " +  '"' + filesFiles + '"') else ""} \
      ~{true="--pad-missing" false="" padPadMissing} \
      ~{if defined(mergeMergeSort) then ("--merge-sort " +  '"' + mergeMergeSort + '"') else ""}
  >>>
}