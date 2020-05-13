version 1.0

task Simulate {
  input {
    Int generationsGenerations
    Boolean makeMakeRIls
    Float phasingPhasingSwitch
    String randomRandomSeed
  }
  command <<<
    simulate \
      ~{if defined(generationsGenerations) then ("--generations " +  '"' + generationsGenerations + '"') else ""} \
      ~{true="--make-rils" false="" makeMakeRIls} \
      ~{if defined(phasingPhasingSwitch) then ("--phasing-switch " +  '"' + phasingPhasingSwitch + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""}
  >>>
}