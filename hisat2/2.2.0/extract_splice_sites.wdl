version 1.0

task ExtractSpliceSites.pyGtfFile {
  input {
    Boolean vV
  }
  command <<<
    extract_splice_sites.py gtf_file \
      ~{true="-v" false="" vV}
  >>>
}