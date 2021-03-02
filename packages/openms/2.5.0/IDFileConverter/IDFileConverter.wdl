version 1.0

task IDFileConverter {
  input {
    File? in
    File? out
    File? out_type
    File? mz_file
    File? mz_name
    Boolean? peptide_prophet_analyzed
    String? score_type
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    IDFileConverter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_type) then ("-out_type " +  '"' + out_type + '"') else ""} \
      ~{if defined(mz_file) then ("-mz_file " +  '"' + mz_file + '"') else ""} \
      ~{if defined(mz_name) then ("-mz_name " +  '"' + mz_name + '"') else ""} \
      ~{if (peptide_prophet_analyzed) then "-peptideprophet_analyzed" else ""} \
      ~{if defined(score_type) then ("-score_type " +  '"' + score_type + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*           Input file or directory containing the data to convert. This may be:\\n- a single file in a multi-purpose XML format (.pepXML, .protXML, .idXML, .mzid),\\n- a single file in a search engine-specific format (Mascot: .mascotXML, OMSSA: .omssaXML, X! Tandem: .xml, Percolator: .psms, xQuest: .xquest.xml),\\n- a single text file (tab separated) with one line for all peptide sequences matching a spectrum (top N hits),\\n- for Sequest results, a directory containing .out files.\\n(valid formats: 'pepXML', 'protXML', 'mascotXML', 'omssaXML', 'xml', 'psms', 'tsv', 'idXML', 'mzid', 'xquest.xml')"
    out: "*               Output file (valid formats: 'idXML', 'mzid', 'pepXML', 'FASTA', 'xquest.xml')"
    out_type: "Output file type (default: determined from file extension) (valid: 'idXML', 'mzid', 'pepXML', 'FASTA', 'xquest.xml')"
    mz_file: "[pepXML, Sequest, Mascot, X! Tandem, mzid, Percolator only] Retention times and native spectrum ids (spectrum_references) will be looked up in this file (valid formats: 'mzML', 'mzXML', 'mzData')"
    mz_name: "[pepXML only] Experiment filename/path (extension will be removed) to match in the pepXML file ('base_name' attribute). Only necessary if different from 'mz_file'."
    peptide_prophet_analyzed: "[pepXML output only] Write output in the format of a PeptideProphet analysis result. By default a 'raw' pepXML is produced that contains only search engine results."
    score_type: "[Percolator only] Which of the Percolator scores to report as 'the' score for a peptide hit (default: 'qvalue' valid: 'qvalue', 'PEP', 'score')"
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