version 1.0

task IDMapper {
  input {
    File? id
    File? in
    File? out
    Int? rt_tolerance
    Int? mz_tolerance
    String? mz_measure
    String? mz_reference
    Boolean? consensus
    Boolean? spectra
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDMapper \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(rt_tolerance) then ("-rt_tolerance " +  '"' + rt_tolerance + '"') else ""} \
      ~{if defined(mz_tolerance) then ("-mz_tolerance " +  '"' + mz_tolerance + '"') else ""} \
      ~{if defined(mz_measure) then ("-mz_measure " +  '"' + mz_measure + '"') else ""} \
      ~{if defined(mz_reference) then ("-mz_reference " +  '"' + mz_reference + '"') else ""} \
      ~{if (consensus) then "-consensus" else ""} \
      ~{if (spectra) then "-spectra" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    id: "*                        Protein/peptide identifications file (valid formats: 'mzid', 'idXML')"
    in: "*                        Feature map/consensus map file (valid formats: 'featureXML', 'consensusXML', 'mzq')"
    out: "*                       Output file (the format depends on the input file format). (valid formats: 'featureXML', 'consensusXML', 'mzq')"
    rt_tolerance: "RT tolerance (in seconds) for the matching of peptide identifications and (consensus) features.\\nTolerance is understood as 'plus or minus x', so the matching range increases by twice the given value. (default: '5.0' min: '0.0')"
    mz_tolerance: "M/z tolerance (in ppm or Da) for the matching of peptide identifications and (consensus) features.\\nTolerance is understood as 'plus or minus x', so the matching range increases by twice the given value. (default: '20.0' min: '0.0')"
    mz_measure: "Unit of 'mz_tolerance'. (default: 'ppm' valid: 'ppm', 'Da')"
    mz_reference: "Source of m/z values for peptide identifications. If 'precursor', the precursor-m/z from the idXML is used. If 'peptide',\\nmasses are computed from the sequences of peptide hits; in this case, an identification matches if any of its hits matches.\\n('peptide' should be used together with 'feature:use_centroid_mz' to avoid false-positive matches.) (default: 'peptide' valid: 'precursor', 'peptide')"
    consensus: ":use_subelements         Match using RT and m/z of sub-features instead of consensus RT and m/z. A consensus feature matches if any of its sub-features matches."
    spectra: ":in <file>                 MS run used to annotated unidentified spectra to features or consensus features. (valid formats: 'mzML')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}