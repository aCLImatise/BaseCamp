version 1.0

task Stringify {
  input {
    String? var
    Boolean? static
    Boolean? create_array_one
  }
  command <<<
    stringify \
      ~{if defined(var) then ("-var " +  '"' + var + '"') else ""} \
      ~{if (static) then "-static" else ""} \
      ~{if (create_array_one) then "-array" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var: "- create a variable with the specified name containing\\nthe string."
    static: "- create the variable but put static in front of it."
    create_array_one: "- create an array of strings, one for each line"
  }
  output {
    File out_stdout = stdout()
  }
}