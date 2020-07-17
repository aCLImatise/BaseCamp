version 1.0

task Timescorealn {
  input {
    Boolean? options
    String? test
    String? ref
    String? program
    String? o
  }
  command <<<
    timescorealn \
      ~{true="-options" false="" options} \
      ~{if defined(test) then ("-test " +  '"' + test + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(program) then ("-program " +  '"' + program + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    options: ""
    test: ""
    ref: ""
    program: ""
    o: ""
  }
}