version 1.0

task RNPxlXICFilter {
  input {
    File? control
    File? treatment
    Boolean? fold_change
    Boolean? rt_to_l
    Boolean? mz_to_l
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    RNPxlXICFilter \
      ~{if defined(control) then ("-control " +  '"' + control + '"') else ""} \
      ~{if defined(treatment) then ("-treatment " +  '"' + treatment + '"') else ""} \
      ~{if (fold_change) then "-fold_change" else ""} \
      ~{if (rt_to_l) then "-rt_tol" else ""} \
      ~{if (mz_to_l) then "-mz_tol" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    control: "*    Input mzML file (valid formats: 'mzML')"
    treatment: "*  Input mzML file (valid formats: 'mzML')"
    fold_change: "Fold change between XICs (default: '2')"
    rt_to_l: "RT tolerance in [s] for finding max peak (whole RT range around RT middle) (default: '20')"
    mz_to_l: "M/z tolerance in [ppm] for finding a peak (default: '10')"
    out: "*        Output of the treatment file after XIC filtering. (valid formats: 'mzML')"
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