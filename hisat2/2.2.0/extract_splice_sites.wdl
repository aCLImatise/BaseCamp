version 1.0

task ExtractSpliceSites.pyGtfFile {
  input {
    Boolean? v
  }
  command <<<
    extract_splice_sites.py gtf_file \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}