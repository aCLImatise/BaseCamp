version 1.0

task ExtractExons.pyGtfFile {
  input {
    Boolean? v
  }
  command <<<
    extract_exons.py gtf_file \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}