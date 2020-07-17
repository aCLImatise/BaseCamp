version 1.0

task RunFor.py {
  input {
    String? f
    String tail
  }
  command <<<
    run_for.py \
      ~{tail} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    tail: ""
  }
}