version 1.0

task EagleConvertOutdir {
  input {
    String? ref
    Boolean? var_1
    String eagle
    String convert
    String? var_4
  }
  command <<<
    eagle convert outdir \
      ~{eagle} \
      ~{convert} \
      ~{var_4} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if (var_1) then "--samples" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: ""
    var_1: ""
    eagle: ""
    convert: ""
    var_4: ""
  }
  output {
    File out_stdout = stdout()
  }
}