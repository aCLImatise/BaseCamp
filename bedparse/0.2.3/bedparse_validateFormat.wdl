version 1.0

task BedparseValidateFormat {
  input {
    Boolean? fix_separators
  }
  command <<<
    bedparse validateFormat \
      ~{true="--fixSeparators" false="" fix_separators}
  >>>
  parameter_meta {
    fix_separators: "If the fields are separated by multiple spaces (e.g. when copy-pasting BED files), replace them into tabs."
  }
}