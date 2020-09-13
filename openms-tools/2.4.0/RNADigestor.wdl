version 1.0

task RNADigestor {
  input {
    File? in
    File? out
    Int? missed_cleavages
    Int? min_length
    Int? max_length
    Int? enzyme
    Boolean? unique
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    RNADigestor \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(missed_cleavages) then ("-missed_cleavages " +  '"' + missed_cleavages + '"') else ""} \
      ~{if defined(min_length) then ("-min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("-max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(enzyme) then ("-enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if (unique) then "-unique" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                 Input file containing RNA sequences (valid formats: 'fasta')"
    out: "*                Output file containing sequence fragments (valid formats: 'fasta')"
    missed_cleavages: "The number of allowed missed cleavages (default: '1' min: '0')"
    min_length: "Minimum length of a fragment (default: '3')"
    max_length: "Maximum length of a fragment (default: '30')"
    enzyme: "Digestion enzyme (RNase) (default: 'RNase_T1' valid: 'unspecific cleavage', 'no cleavage', 'RNase_T1')"
    unique: "Report each unique sequence fragment only once"
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