version 1.0

task TestGromacsPy.py {
  input {
    String? copy
  }
  command <<<
    test_gromacs_py.py \
      ~{if defined(copy) then ("-Copy " +  '"' + copy + '"') else ""}
  >>>
  parameter_meta {
    copy: "box using genconf"
  }
}