version 1.0

task Timescorealn {
  input {
    String? o
    String? program
    String? ref
    String? test
    Boolean? options
  }
  command <<<
    timescorealn \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(program) then ("-program " +  '"' + program + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(test) then ("-test " +  '"' + test + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    o: ""
    program: ""
    ref: ""
    test: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}