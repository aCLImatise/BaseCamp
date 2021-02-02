version 1.0

task TargetedFileConverter {
  input {
    File? in
    File? in_type
    File? out
    File? out_type
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    TargetedFileConverter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_type) then ("-in_type " +  '"' + in_type + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_type) then ("-out_type " +  '"' + out_type + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*        Input file to convert.\\nSee http://www.openms.de/current_doxygen/html/UTILS_TargetedFileConverter.html for format of OpenSWATH transition TSV file or SpectraST MRM file. (valid formats: 'tsv', 'mrm', 'pqp', 'TraML')"
    in_type: "Input file type -- default: determined from file extension or content\\n(valid: 'tsv', 'mrm', 'pqp', 'TraML')"
    out: "*       Output file (valid formats: 'tsv', 'pqp', 'TraML')"
    out_type: "Output file type -- default: determined from file extension or content\\nNote: that not all conversion paths work or make sense. (valid: 'tsv', 'pqp', 'TraML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_type = "${in_out_type}"
  }
}