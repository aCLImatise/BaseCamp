version 1.0

task ExtractExons.pyGtfFile {
  input {
    Boolean vV
  }
  command <<<
    extract_exons.py gtf_file \
      ~{true="-v" false="" vV}
  >>>
}