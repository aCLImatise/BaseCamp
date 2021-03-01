version 1.0

task Seqtest {
  input {
    Boolean? filename_asn_input
    File? filename_output_stdout
  }
  command <<<
    seqtest \
      ~{if (filename_asn_input) then "-i" else ""} \
      ~{if (filename_output_stdout) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename_asn_input: "Filename for asn.1 input [File In]\\ndefault = stdin"
    filename_output_stdout: "Filename for output [File Out]  Optional\\ndefault = stdout\\n"
  }
  output {
    File out_stdout = stdout()
    File out_filename_output_stdout = "${in_filename_output_stdout}"
  }
}