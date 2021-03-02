version 1.0

task Tandem2pin {
  input {
    File? output_tab
    File? output_xml
    Boolean? output_xml_stdout
    Int? matches
    Int? verbose
    Boolean? aa_freq
    Boolean? ptm
    Boolean? enzyme
    Boolean? id_with_exp_mass
    Boolean? png_as_ef
    File? ms_two_file
    Boolean? isotope
    Int? psm_annotation
    Boolean? pattern
    Boolean? databases
    Boolean? cleavages
    Boolean? min_length
    Boolean? max_length
    Boolean? min_mass
    Boolean? max_mass
    File m_number
  }
  command <<<
    tandem2pin \
      ~{m_number} \
      ~{if defined(output_tab) then ("--outputTab " +  '"' + output_tab + '"') else ""} \
      ~{if defined(output_xml) then ("--outputXML " +  '"' + output_xml + '"') else ""} \
      ~{if (output_xml_stdout) then "--outputXMLstdout" else ""} \
      ~{if defined(matches) then ("--matches " +  '"' + matches + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (aa_freq) then "--aa-freq" else ""} \
      ~{if (ptm) then "--PTM" else ""} \
      ~{if (enzyme) then "--enzyme" else ""} \
      ~{if (id_with_exp_mass) then "--id-with-exp-mass" else ""} \
      ~{if (png_as_ef) then "--PNGaseF" else ""} \
      ~{if defined(ms_two_file) then ("--ms2-file " +  '"' + ms_two_file + '"') else ""} \
      ~{if (isotope) then "--isotope" else ""} \
      ~{if defined(psm_annotation) then ("--psm-annotation " +  '"' + psm_annotation + '"') else ""} \
      ~{if (pattern) then "--pattern" else ""} \
      ~{if (databases) then "--databases" else ""} \
      ~{if (cleavages) then "--cleavages" else ""} \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (max_length) then "--max-length" else ""} \
      ~{if (min_mass) then "--min-mass" else ""} \
      ~{if (max_mass) then "--max-mass" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_tab: "save output in a tab delimited file"
    output_xml: "save output in the (deprecated) pin-xml format file"
    output_xml_stdout: "output to stdout in the (deprecated) pin-xml format"
    matches: "Maximal number of matches to take in consideration\\nper spectrum"
    verbose: "Set verbosity of output: 0=no processing info,\\n5=all, default is 2"
    aa_freq: "Calculate amino acid frequency features"
    ptm: "Calculate feature for number of post-translational"
    enzyme: "Type of enzyme\\n\\\"no_enzyme\\\",\\\"elastase\\\",\\\"pepsin\\\",\\\"proteinasek\\\",\\\"therm\\nolysin\\\",\\\"chymotrypsin\\\",\\\"lys-n\\\",\\\"lys-c\\\",\\\"arg-c\\\",\\\"asp-\\nn\\\",\\\"glu-c\\\",\\\"trypsin\\\" default=\\\"trypsin\\\""
    id_with_exp_mass: "Include experimental mass in PSMid for easier\\ncorrelation with search engine results."
    png_as_ef: "Calculate feature based on N-linked glycosylation\\npattern resulting from a PNGaseF treatment.\\n(N[*].[ST])"
    ms_two_file: "File containing spectra and retention time. The file\\ncould be in mzXML, MS2 or compressed MS2 file."
    isotope: "Mass difference calculated to closest isotope mass\\nrather than to the average mass."
    psm_annotation: "An anotation scheme used to convert the psms from\\nthe search. An example if Q# was used to describe\\npyro-glu formation (UNIMOD:28), and S* and T* was\\nused to describe phosphorylation (UNIMOD:21), we\\nwould use the option -p *:21:#:28"
    pattern: "Pattern used to identify the decoy PSMs. Default =\\n\\\"random\\\"."
    databases: "Link to the fasta database/s used in the search\\nagainst the spectra file/s\\n<target.fasta,[decoy.fasta]> (Including this option\\nwill add the proteins to the generated pin file)."
    cleavages: "Number of allowed miss cleavages used in the search\\nengine (default 0)(Only valid when using option -F)."
    min_length: "Minimum peptide length allowed used in the search\\nengine (default 6)(Only valid when using option -F)."
    max_length: "Maximum peptide length allowed used in the search\\nengine (default 40)(Only valid when using option\\n-F)."
    min_mass: "Minimum peptide mass allowed used in the search\\nengine (default 400)(Only valid when using option\\n-F)."
    max_mass: "Maximum peptide mass allowed used in the search\\nengine (default 6000)(Only valid when using option\\n-F).\\n"
    m_number: "-m <number>"
  }
  output {
    File out_stdout = stdout()
    File out_output_tab = "${in_output_tab}"
    File out_output_xml = "${in_output_xml}"
  }
}