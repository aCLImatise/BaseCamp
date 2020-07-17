version 1.0

task Vcfrandomsample {
  input {
    String? rate
    String? scale_by
    String? random_seed
    Boolean? pseudorandom_seed
    String? vcf_file
  }
  command <<<
    vcfrandomsample \
      ~{vcf_file} \
      ~{if defined(rate) then ("--rate " +  '"' + rate + '"') else ""} \
      ~{if defined(scale_by) then ("--scale-by " +  '"' + scale_by + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{true="--pseudorandom-seed" false="" pseudorandom_seed}
  >>>
  parameter_meta {
    rate: "base sampling probability per locus"
    scale_by: "scale sampling likelihood by this Float info field"
    random_seed: "use this random seed (by default read from /dev/random)"
    pseudorandom_seed: "use a pseudorandom seed (by default read from /dev/random)"
    vcf_file: ""
  }
}