version 1.0

task BaselineFilter {
  input {
    File? in
    File? out
    Int? struc_elem_length
    String? struc_elem_unit
    String? method
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    BaselineFilter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(struc_elem_length) then ("-struc_elem_length " +  '"' + struc_elem_length + '"') else ""} \
      ~{if defined(struc_elem_unit) then ("-struc_elem_unit " +  '"' + struc_elem_unit + '"') else ""} \
      ~{if defined(method) then ("-method " +  '"' + method + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                Input raw data file  (valid formats: 'mzML')"
    out: "*               Output raw data file  (valid formats: 'mzML')"
    struc_elem_length: "Length of the structuring element (should be wider than maximal peak width - see documentation). (default: '3.0')"
    struc_elem_unit: "Unit of 'struc_elem_length' parameter. (default: 'Thomson' valid: 'Thomson', 'DataPoints')"
    method: "The name of the morphological filter to be applied. If you are unsure, use the default. (default: 'tophat' valid: 'identity', 'erosion', 'dilation', 'opening', 'closing', 'gradient', 'tophat', 'bothat', 'erosion_simple', 'dilation_simple')"
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