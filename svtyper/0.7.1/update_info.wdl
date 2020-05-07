version 1.0

task UpdateInfo.py {
  input {
    String? vcfVcf
  }
  command <<<
    update_info.py \
      ~{vcfVcf}
  >>>
}