version 1.0

task MzMLSplitter {
  input {
    File? in
    File? out
    Int? parts
    Int? size
    Int? unit
    Boolean? no_chrom
    Boolean? no_spec
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MzMLSplitter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(parts) then ("-parts " +  '"' + parts + '"') else ""} \
      ~{if defined(size) then ("-size " +  '"' + size + '"') else ""} \
      ~{if defined(unit) then ("-unit " +  '"' + unit + '"') else ""} \
      ~{if (no_chrom) then "-no_chrom" else ""} \
      ~{if (no_spec) then "-no_spec" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*        Input file (valid formats: 'mzML')"
    out: "Prefix for output files ('_part1of2.mzML' etc. will be appended; default: same as 'in' without the file extension)"
    parts: "Number of parts to split into (takes precedence over 'size' if set) (default: '1' min: '1')"
    size: "Approximate upper limit for resulting file sizes (in 'unit') (default: '0' min: '0')"
    unit: "Unit for 'size' (base 1024) (default: 'MB' valid: 'KB', 'MB', 'GB')"
    no_chrom: "Remove chromatograms, keep only spectra."
    no_spec: "Remove spectra, keep only chromatograms."
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