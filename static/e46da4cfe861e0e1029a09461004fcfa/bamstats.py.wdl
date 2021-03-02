version 1.0

task Bamstatspy {
  input {
    String? o
    String bam
    String statistics
    String? var_input
  }
  command <<<
    bamstats_py \
      ~{bam} \
      ~{statistics} \
      ~{var_input} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    bam: ""
    statistics: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}