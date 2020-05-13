version 1.0

task CrossMap.py {
  input {
    String? gffGff
    String? mafMaf
    String? vcfVcf
    String? wigWig
  }
  command <<<
    CrossMap.py \
      ~{gffGff} \
      ~{mafMaf} \
      ~{vcfVcf} \
      ~{wigWig}
  >>>
}