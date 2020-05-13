version 1.0

task MafThreadForSpecies.py {
  input {
    Boolean noNoFuse
  }
  command <<<
    maf_thread_for_species.py \
      ~{true="--nofuse" false="" noNoFuse}
  >>>
}