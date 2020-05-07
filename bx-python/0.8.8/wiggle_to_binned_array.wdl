version 1.0

task WiggleToBinnedArray.py {
  input {
    String compComp
  }
  command <<<
    wiggle_to_binned_array.py \
      ~{if defined(compComp) then ("--comp " +  '"' + compComp + '"') else ""}
  >>>
}