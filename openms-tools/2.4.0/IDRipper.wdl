version 1.0

task IDRipper {
  input {
    File? in
    File? out
    Directory? out_path
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDRipper \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_path) then ("-out_path " +  '"' + out_path + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*        Input file, in which the protein/peptide identifications must be tagged with 'file_origin' (valid formats: 'idXML')"
    out: "The path to this file is used as the output directory. (valid formats: 'idXML')"
    out_path: "Directory for the output files after ripping according to 'file_origin'. If 'out_path' is set, 'out' is ignored."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    Directory out_out_path = "${in_out_path}"
  }
}