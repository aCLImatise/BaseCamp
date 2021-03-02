version 1.0

task Testcore {
  input {
    Boolean? test_boolean_default
    Boolean? test_integer_range
    Boolean? test_float_default
    Boolean? test_string_optional
    Boolean? test_filein_optional
    File? test_fileout_optional
    Boolean? test_datain_optionaldata
    Boolean? test_dataout_optionaldata
  }
  command <<<
    testcore \
      ~{if (test_boolean_default) then "-b" else ""} \
      ~{if (test_integer_range) then "-i" else ""} \
      ~{if (test_float_default) then "-f" else ""} \
      ~{if (test_string_optional) then "-s" else ""} \
      ~{if (test_filein_optional) then "-w" else ""} \
      ~{if (test_fileout_optional) then "-x" else ""} \
      ~{if (test_datain_optionaldata) then "-y" else ""} \
      ~{if (test_dataout_optionaldata) then "-z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    test_boolean_default: "test Boolean [T/F]\\ndefault = T"
    test_integer_range: "test Integer [Integer]  Optional\\ndefault = 42\\nrange from 41 to 43"
    test_float_default: "test Float [Real]\\ndefault = 3.14159"
    test_string_optional: "test String [String]  Optional"
    test_filein_optional: "test File-in [File In]  Optional"
    test_fileout_optional: "test File-out [File Out]  Optional"
    test_datain_optionaldata: "test Data-in [Data In]  Optional\\nData Type = Fake-type"
    test_dataout_optionaldata: "test Data-out [Data Out]  Optional\\nData Type = Fake-out\\n"
  }
  output {
    File out_stdout = stdout()
    File out_test_fileout_optional = "${in_test_fileout_optional}"
  }
}