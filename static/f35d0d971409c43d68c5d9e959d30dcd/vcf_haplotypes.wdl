version 1.0

task VcfHaplotypes {
  input {
    String cat
    String ref_dot_fa
  }
  command <<<
    vcf-haplotypes \
      ~{cat} \
      ~{ref_dot_fa}
  >>>
  parameter_meta {
    cat: ""
    ref_dot_fa: ""
  }
}