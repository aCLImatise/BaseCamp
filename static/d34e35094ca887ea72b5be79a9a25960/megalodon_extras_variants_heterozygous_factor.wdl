version 1.0

task MegalodonExtrasVariantsHeterozygousFactor {
  input {
    String calls_dot
    String megalodon_dot
  }
  command <<<
    megalodon_extras variants heterozygous_factor \
      ~{calls_dot} \
      ~{megalodon_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0"
  }
  parameter_meta {
    calls_dot: "megalodon_variants    VCF file containing diploid variant calls from"
    megalodon_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}