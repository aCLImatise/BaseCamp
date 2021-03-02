version 1.0

task ProteomicsLFQ {
  input {
    File? in
    File? ids
    File? design
    File? fast_a
    File? out
    File? out_ms_stats
    File? out_c_xml
    Int? protein_fdr
    Int? psm_fdr
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    ProteomicsLFQ \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(ids) then ("-ids " +  '"' + ids + '"') else ""} \
      ~{if defined(design) then ("-design " +  '"' + design + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_ms_stats) then ("-out_msstats " +  '"' + out_ms_stats + '"') else ""} \
      ~{if defined(out_c_xml) then ("-out_cxml " +  '"' + out_c_xml + '"') else ""} \
      ~{if defined(protein_fdr) then ("-proteinFDR " +  '"' + protein_fdr + '"') else ""} \
      ~{if defined(psm_fdr) then ("-psmFDR " +  '"' + psm_fdr + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*                                           Input files (valid formats: 'mzML')"
    ids: "*                                          Identifications filtered at PSM level (e.g., q-value < 0.01).And annotated with PEP as main score.\\nWe suggest using:\\n1. PercolatorAdapter tool (score_type = 'q-value', -post-processing-tdc)\\n2. FalseDiscoveryRate (FDR:PSM = 0.01)\\n3. IDScoreSwitcher (-old_score q-value -new_score MS:1001493 -new_score_orientation lower_better -new_score_type)\\nTo obtain well calibrated PEPs and an inital reduction of PSMs\\nID files must be provided in same order as spectra files. (valid formats: 'idXML', 'mzId')"
    design: "Design file (valid formats: 'tsv')"
    fast_a: "Fasta file (valid formats: 'fasta')"
    out: "*                                               Output mzTab file (valid formats: 'mzTab')"
    out_ms_stats: "Output MSstats input file (valid formats: 'csv')"
    out_c_xml: "Output consensusXML file (valid formats: 'consensusXML')"
    protein_fdr: "Protein FDR threshold (0.05=5%). (default: '0.05' min: '0.0' max: '1.0')"
    psm_fdr: "PSM FDR threshold (e.g. 0.05=5%). If Bayesian inference was chosen, it is equivalent with a peptide FDR (default: '1.0' min: '0.0' max: '1.0')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_c_xml = "${in_out_c_xml}"
  }
}