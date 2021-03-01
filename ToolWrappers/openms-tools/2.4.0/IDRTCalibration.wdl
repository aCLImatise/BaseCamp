version 1.0

task IDRTCalibration {
  input {
    File? in
    File? out
    Int? calibra_nt_one_reference
    Int? calibra_nt_two_reference
    Int? calibra_nt_one_input
    Int? calibra_nt_two_input
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDRTCalibration \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(calibra_nt_one_reference) then ("-calibrant_1_reference " +  '"' + calibra_nt_one_reference + '"') else ""} \
      ~{if defined(calibra_nt_two_reference) then ("-calibrant_2_reference " +  '"' + calibra_nt_two_reference + '"') else ""} \
      ~{if defined(calibra_nt_one_input) then ("-calibrant_1_input " +  '"' + calibra_nt_one_input + '"') else ""} \
      ~{if defined(calibra_nt_two_input) then ("-calibrant_2_input " +  '"' + calibra_nt_two_input + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                  Input file  (valid formats: 'idXML')"
    out: "*                 Output file  (valid formats: 'idXML')"
    calibra_nt_one_reference: "The RT of the first calibrant in the reference file. (default: '0.1')"
    calibra_nt_two_reference: "The RT of the second calibrant in the reference file. (default: '0.9')"
    calibra_nt_one_input: "The RT of the first calibrant in the input file. Please note that this value needs to be set. The default value -1.0 is not allowed. (default: '-1')"
    calibra_nt_two_input: "The RT of the second calibrant in the input file. Please note that this value needs to be set. The default value -1.0 is not allowed. (default: '-1')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}