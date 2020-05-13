version 1.0

task ToFasta.py {
  input {
    String trimTrim5p
    String trimTrim3p
    String seedSeed5p
    String seedSeed3p
    String mM
    String xX
    Boolean sS
    Boolean bB
    Boolean aA
    String? fastFastQ
  }
  command <<<
    to_fasta.py \
      ~{fastFastQ} \
      ~{if defined(trimTrim5p) then ("--trim-5p " +  '"' + trimTrim5p + '"') else ""} \
      ~{if defined(trimTrim3p) then ("--trim-3p " +  '"' + trimTrim3p + '"') else ""} \
      ~{if defined(seedSeed5p) then ("--seed-5p " +  '"' + seedSeed5p + '"') else ""} \
      ~{if defined(seedSeed3p) then ("--seed-3p " +  '"' + seedSeed3p + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-B" false="" bB} \
      ~{true="-a" false="" aA}
  >>>
}