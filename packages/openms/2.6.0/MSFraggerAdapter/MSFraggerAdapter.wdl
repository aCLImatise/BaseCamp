version 1.0

task MSFraggerAdapter {
  input {
    File? java_executable
    Int? java_heap_memory
    File? executable
    File? in
    File? out
    File? opt_out
    File? database
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MSFraggerAdapter \
      ~{if defined(java_executable) then ("-java_executable " +  '"' + java_executable + '"') else ""} \
      ~{if defined(java_heap_memory) then ("-java_heapmemory " +  '"' + java_heap_memory + '"') else ""} \
      ~{if defined(executable) then ("-executable " +  '"' + executable + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(opt_out) then ("-opt_out " +  '"' + opt_out + '"') else ""} \
      ~{if defined(database) then ("-database " +  '"' + database + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    java_executable: "The Java executable. Usually Java is on the system PATH. If Java is not found, use this parameter to specify the full path to Java"
    java_heap_memory: "Maximum Java heap size (in MB) (default: '3500')"
    executable: "Path to the MSFragger executable to use; may be empty if the executable is globally available."
    in: "*                                                              Input File with specta for MSFragger (valid formats: 'mzML', 'mzXML')"
    out: "*                                                             MSFragger output file (valid formats: 'idXML')"
    opt_out: "MSFragger optional output file (valid formats: 'pepXML')"
    database: "*                                               Protein FASTA database file path (valid formats: 'FASTA', 'fasta', 'fa', 'fas')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_opt_out = "${in_opt_out}"
  }
}