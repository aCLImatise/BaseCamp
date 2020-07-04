version 1.0

task AlignTrimOrthologs.py {
  input {
    String filter_orthologs_do_tpy
  }
  command <<<
    align_trim_orthologs.py \
      ~{filter_orthologs_do_tpy}
  >>>
  parameter_meta {
    filter_orthologs_do_tpy: ""
  }
}