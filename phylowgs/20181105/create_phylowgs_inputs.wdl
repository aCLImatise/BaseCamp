version 1.0

task CreatePhylowgsInputs.py {
  input {
    String? vcfVcfFiles
  }
  command <<<
    create_phylowgs_inputs.py \
      ~{vcfVcfFiles}
  >>>
}