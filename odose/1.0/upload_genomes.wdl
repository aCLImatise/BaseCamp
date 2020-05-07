version 1.0

task UploadGenomes.py {
  input {
    String? selectSelectTaxApy
  }
  command <<<
    upload_genomes.py \
      ~{selectSelectTaxApy}
  >>>
}