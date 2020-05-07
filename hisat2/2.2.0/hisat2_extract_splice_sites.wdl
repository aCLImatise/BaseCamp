version 1.0

task Hisat2ExtractSpliceSites.pyGtfFile {
  input {
    Boolean vV
  }
  command <<<
    hisat2_extract_splice_sites.py gtf_file \
      ~{true="-v" false="" vV}
  >>>
}