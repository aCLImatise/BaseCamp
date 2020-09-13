version 1.0

task VcfSort {
  input {
    File? in
    File? out
    Boolean? qual
    File? fai
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfSort \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (qual) then "-qual" else ""} \
      ~{if defined(fai) then ("-fai " +  '"' + fai + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input variant list."
    out: "Output variant list."
    qual: "Also sort according to variant quality. Ignored if 'fai' file is given.\\nDefault value: 'false'"
    fai: "FAI file defining different chromosome order.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}