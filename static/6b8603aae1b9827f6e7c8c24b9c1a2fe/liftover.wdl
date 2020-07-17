version 1.0

task Liftover.py {
  input {
    String? var_input
    String? var_output
    String? chain
    File? path_lift_over
    String? tmp_dir
  }
  command <<<
    liftover.py \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(path_lift_over) then ("--path-liftover " +  '"' + path_lift_over + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""}
  >>>
  parameter_meta {
    var_input: "The input list of fusion genes and their genome coordinates."
    var_output: "The input list of fusion genes and their genome coordinates."
    chain: "The chain files needed by liftOver to do the conversion."
    path_lift_over: "Path to the liftover executable."
    tmp_dir: "The directory which should be used as temporary directory. By default is the OS temporary directory."
  }
}