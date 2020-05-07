version 1.0

task PickRepSet.py {
  input {
    String inputInputFile
  }
  command <<<
    pick_rep_set.py \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""}
  >>>
}