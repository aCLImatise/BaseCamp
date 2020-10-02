version 1.0

task PickOtusCondensepy {
  input {
    String? n
    String? s
  }
  command <<<
    pick_otus_condense_py \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    n: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}