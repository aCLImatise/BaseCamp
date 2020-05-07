version 1.0

task Hisat2ExtractExons.pyGtfFile {
  input {
    Boolean vV
  }
  command <<<
    hisat2_extract_exons.py gtf_file \
      ~{true="-v" false="" vV}
  >>>
}