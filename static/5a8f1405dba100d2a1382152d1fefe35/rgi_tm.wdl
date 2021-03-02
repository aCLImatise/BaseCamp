version 1.0

task RgiTm {
  input {
    Boolean? clean
    Boolean? debug
    String? t
    File? o
    File? i
    String input_file
  }
  command <<<
    rgi tm \
      ~{input_file} \
      ~{if (clean) then "--clean" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    clean: "removes temporary files"
    debug: "debug mode"
    t: ""
    o: ""
    i: ""
    input_file: "-o OUTPUT_FILE, --output_file OUTPUT_FILE"
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}