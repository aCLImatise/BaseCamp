version 1.0

task WiggleToBinnedArray.py {
  input {
    String? comp
    String score_file
    String out_file
  }
  command <<<
    wiggle_to_binned_array.py \
      ~{score_file} \
      ~{out_file} \
      ~{if defined(comp) then ("--comp " +  '"' + comp + '"') else ""}
  >>>
  parameter_meta {
    comp: "compression type (none, zlib, lzo)"
    score_file: ""
    out_file: ""
  }
}