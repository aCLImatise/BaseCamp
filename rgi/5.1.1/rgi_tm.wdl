version 1.0

task RgiTm {
  input {
    File? var_0
    Boolean? clean
    Boolean? debug
    String? t
    File? o
    String outputfile__outputfile
    String output_file
  }
  command <<<
    rgi tm \
      ~{outputfile__outputfile} \
      ~{output_file} \
      ~{if defined(var_0) then ("--input_file " +  '"' + var_0 + '"') else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    clean: "removes temporary files"
    debug: "debug mode"
    t: ""
    o: ""
    outputfile__outputfile: "-o OUTPUT_FILE, --output_file OUTPUT_FILE"
    output_file: "-t FILTER_TEMPERATURE, --filter_temperature FILTER_TEMPERATURE"
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}