version 1.0

task OpenSwathMzMLFileCacher {
  input {
    File? in
    String? in_type
    File? out
    String? out_type
    Boolean? convert_back
    String? lossy_compression
    String? full_meta
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenSwathMzMLFileCacher \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_type) then ("-in_type " +  '"' + in_type + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_type) then ("-out_type " +  '"' + out_type + '"') else ""} \
      ~{true="-convert_back" false="" convert_back} \
      ~{if defined(lossy_compression) then ("-lossy_compression " +  '"' + lossy_compression + '"') else ""} \
      ~{if defined(full_meta) then ("-full_meta " +  '"' + full_meta + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*                Input mzML file (valid formats: 'mzML', 'sqMass')"
    in_type: "Input file type -- default: determined from file extension or content (valid: 'mzML', 'sqMass')"
    out: "*               Output file (valid formats: 'mzML', 'sqMass')"
    out_type: "Output file type -- default: determined from file extension or content Note: that not all conversion paths work or make sense. (valid: 'mzML', 'sqMass')"
    convert_back: "Convert back to mzML"
    lossy_compression: "Use numpress compression to achieve optimally small file size (attention: may cause small loss of precision; only for mzML data). (default: 'true' valid: 'true', 'false')"
    full_meta: "Write full meta information into sqMass file (may require large amounts of memory) (default: 'true' valid: 'true', 'false')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}