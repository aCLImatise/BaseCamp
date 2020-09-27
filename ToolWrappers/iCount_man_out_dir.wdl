version 1.0

task ICountManOutDir {
  input {
    Boolean? mode
    String i_count
    String man
  }
  command <<<
    iCount man out_dir \
      ~{i_count} \
      ~{man} \
      ~{if (mode) then "--mode" else ""}
  >>>
  parameter_meta {
    mode: ""
    i_count: ""
    man: ""
  }
  output {
    File out_stdout = stdout()
  }
}