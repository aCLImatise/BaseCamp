version 1.0

task IDMerger {
  input {
    String? in
    File? out
    File? add_to
    Boolean? annotate_file_origin
    Boolean? pep_xml_prot_xml
    Boolean? merge_proteins_add_psms
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDMerger \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(add_to) then ("-add_to " +  '"' + add_to + '"') else ""} \
      ~{if (annotate_file_origin) then "-annotate_file_origin" else ""} \
      ~{if (pep_xml_prot_xml) then "-pepxml_protxml" else ""} \
      ~{if (merge_proteins_add_psms) then "-merge_proteins_add_PSMs" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*               Input files separated by blanks (valid formats: 'idXML')"
    out: "*               Output file (valid formats: 'idXML')"
    add_to: "Optional input file. IDs from 'in' are added to this file, but only if the (modified) peptide sequences are not present yet (considering only best hits per spectrum). (valid formats: 'idXML')"
    annotate_file_origin: "Store the original filename in each protein/peptide identification (meta value: file_origin)."
    pep_xml_prot_xml: "Merge idXML files derived from a pepXML and corresponding protXML file.\\nExactly two input files are expected in this case. Not compatible with 'add_to'."
    merge_proteins_add_psms: "Merge all identified proteins by accession into one protein identification run but keep all the PSMs with updated links to potential new protein ID#s. Not compatible with 'add_to'."
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