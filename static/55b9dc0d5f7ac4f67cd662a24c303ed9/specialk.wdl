version 1.0

task Specialk {
  input {
    String? o
    String reads_file
  }
  command <<<
    specialk \
      ~{reads_file} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    reads_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}