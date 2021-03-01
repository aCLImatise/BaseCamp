version 1.0

task RNAMassCalculator {
  input {
    File? in
    String? in_seq
    File? out
    Int? charge
    String? format
    Boolean? average_mass
    Int? fragment_type
    String? separator
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    RNAMassCalculator \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_seq) then ("-in_seq " +  '"' + in_seq + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(charge) then ("-charge " +  '"' + charge + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if (average_mass) then "-average_mass" else ""} \
      ~{if defined(fragment_type) then ("-fragment_type " +  '"' + fragment_type + '"') else ""} \
      ~{if defined(separator) then ("-separator " +  '"' + separator + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input file with RNA sequences and optionally charge numbers (mutually exclusive to 'in_seq') (valid formats: 'txt')"
    in_seq: "List of RNA sequences (mutually exclusive to 'in')"
    out: "Output file; if empty, output is written to the screen (valid formats: 'txt')"
    charge: "List of charge states; required if 'in_seq' is given (default: '[0]')"
    format: "Output format ('list': human-readable list, 'table': CSV-like table, 'mass_only': mass values only, 'mz_only': m/z values only)\\n(default: 'list' valid: 'list', 'table', 'mass_only', 'mz_only')"
    average_mass: "Compute average (instead of monoisotopic) oligonucleotide masses"
    fragment_type: "For what type of sequence/fragment the mass should be computed\\n(default: 'full' valid: 'full', 'internal', '5-prime', '3-prime', 'a-B-ion', 'a-ion', 'b-ion', 'c-ion', 'd-ion', 'w-ion', 'x-ion', 'y-ion', 'z-ion')"
    separator: "Field separator for 'table' output format; by default, the 'tab' character is used"
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