version 1.0

task OpenSwathMzMLFileCacher {
  input {
    File? in
    File? in_type
    File? out
    File? out_type
    Boolean? convert_back
    Int? lossy_compression
    File? full_meta
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    OpenSwathMzMLFileCacher \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_type) then ("-in_type " +  '"' + in_type + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_type) then ("-out_type " +  '"' + out_type + '"') else ""} \
      ~{if (convert_back) then "-convert_back" else ""} \
      ~{if defined(lossy_compression) then ("-lossy_compression " +  '"' + lossy_compression + '"') else ""} \
      ~{if defined(full_meta) then ("-full_meta " +  '"' + full_meta + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*                Input mzML file (valid formats: 'mzML', 'sqMass')"
    in_type: "Input file type -- default: determined from file extension or content\\n(valid: 'mzML', 'sqMass')"
    out: "*               Output file (valid formats: 'mzML', 'sqMass')"
    out_type: "Output file type -- default: determined from file extension or content\\nNote: that not all conversion paths work or make sense. (valid: 'mzML', 'sqMass')"
    convert_back: "Convert back to mzML"
    lossy_compression: "Use numpress compression to achieve optimally small file size (attention: may cause small loss of precision; only for mzML data). (default: 'true' valid: 'true', 'false')"
    full_meta: "Write full meta information into sqMass file (may require large amounts of memory) (default: 'true' valid: 'true', 'false')"
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