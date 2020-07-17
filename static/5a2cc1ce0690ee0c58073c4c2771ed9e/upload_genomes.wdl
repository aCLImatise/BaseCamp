version 1.0

task UploadGenomes.py {
  input {
    String select_taxa_do_tpy
  }
  command <<<
    upload_genomes.py \
      ~{select_taxa_do_tpy}
  >>>
  parameter_meta {
    select_taxa_do_tpy: ""
  }
}