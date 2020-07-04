version 1.0

task Genotype.pl {
  input {
    String? tmp
  }
  command <<<
    genotype.pl \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""}
  >>>
  parameter_meta {
    tmp: ": the tmp directory; If unspecified, use /tmp/tmpsomb5k_a/bin/tmp/"
  }
}