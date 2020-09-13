version 1.0

task Sqt2pin {
  input {
    Boolean? help
    File? o
    File? output_tab
    File? var_3
    File? output_xml
    Boolean? var_5
    Boolean? output_xml_stdout
    Int? matches
    String? v
    Int? verbose
    Boolean? a
    Boolean? aa_freq
    Boolean? b
    Boolean? ptm
    Boolean? enzyme
    Boolean? id_with_exp_mass
    Boolean? n
    Boolean? png_as_ef
    File? two
    File? ms_two_file
    Boolean? m
    Boolean? isotope
    String? var_22
    Int? psm_annotation
    Boolean? var_24
    Boolean? pattern
    Boolean? f
    Boolean? databases
    Boolean? c
    Boolean? cleavages
    Boolean? l
    Boolean? min_length
    Boolean? t
    Boolean? max_length
    Boolean? w
    Boolean? min_mass
    Boolean? x
    Boolean? max_mass
    File file
    String modifications
  }
  command <<<
    sqt2pin \
      ~{file} \
      ~{modifications} \
      ~{if (help) then "--help" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(output_tab) then ("--outputTab " +  '"' + output_tab + '"') else ""} \
      ~{if defined(var_3) then ("-k " +  '"' + var_3 + '"') else ""} \
      ~{if defined(output_xml) then ("--outputXML " +  '"' + output_xml + '"') else ""} \
      ~{if (var_5) then "-K" else ""} \
      ~{if (output_xml_stdout) then "--outputXMLstdout" else ""} \
      ~{if defined(matches) then ("--matches " +  '"' + matches + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (a) then "-a" else ""} \
      ~{if (aa_freq) then "--aa-freq" else ""} \
      ~{if (b) then "-b" else ""} \
      ~{if (ptm) then "--PTM" else ""} \
      ~{if (enzyme) then "--enzyme" else ""} \
      ~{if (id_with_exp_mass) then "--id-with-exp-mass" else ""} \
      ~{if (n) then "-N" else ""} \
      ~{if (png_as_ef) then "--PNGaseF" else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(ms_two_file) then ("--ms2-file " +  '"' + ms_two_file + '"') else ""} \
      ~{if (m) then "-M" else ""} \
      ~{if (isotope) then "--isotope" else ""} \
      ~{if defined(var_22) then ("-p " +  '"' + var_22 + '"') else ""} \
      ~{if defined(psm_annotation) then ("--psm-annotation " +  '"' + psm_annotation + '"') else ""} \
      ~{if (var_24) then "-P" else ""} \
      ~{if (pattern) then "--pattern" else ""} \
      ~{if (f) then "-F" else ""} \
      ~{if (databases) then "--databases" else ""} \
      ~{if (c) then "-c" else ""} \
      ~{if (cleavages) then "--cleavages" else ""} \
      ~{if (l) then "-l" else ""} \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if (max_length) then "--max-length" else ""} \
      ~{if (w) then "-w" else ""} \
      ~{if (min_mass) then "--min-mass" else ""} \
      ~{if (x) then "-x" else ""} \
      ~{if (max_mass) then "--max-mass" else ""}
  >>>
  parameter_meta {
    help: "Display this message"
    o: ""
    output_tab: "save output in a tab delimited file"
    var_3: ""
    output_xml: "save output in the (deprecated) pin-xml format file"
    var_5: ""
    output_xml_stdout: "output to stdout in the (deprecated) pin-xml format"
    matches: "Maximal number of matches to take in consideration\\nper spectrum"
    v: ""
    verbose: "Set verbosity of output: 0=no processing info,\\n5=all, default is 2"
    a: ""
    aa_freq: "Calculate amino acid frequency features"
    b: ""
    ptm: "Calculate feature for number of post-translational"
    enzyme: "Type of enzyme\\n\\\"no_enzyme\\\",\\\"elastase\\\",\\\"pepsin\\\",\\\"proteinasek\\\",\\\"therm\\nolysin\\\",\\\"chymotrypsin\\\",\\\"lys-n\\\",\\\"lys-c\\\",\\\"arg-c\\\",\\\"asp-\\nn\\\",\\\"glu-c\\\",\\\"trypsin\\\" default=\\\"trypsin\\\""
    id_with_exp_mass: "Include experimental mass in PSMid for easier\\ncorrelation with search engine results."
    n: ""
    png_as_ef: "Calculate feature based on N-linked glycosylation\\npattern resulting from a PNGaseF treatment.\\n(N[*].[ST])"
    two: ""
    ms_two_file: "File containing spectra and retention time. The file\\ncould be in mzXML, MS2 or compressed MS2 file."
    m: ""
    isotope: "Mass difference calculated to closest isotope mass\\nrather than to the average mass."
    var_22: ""
    psm_annotation: "An anotation scheme used to convert the psms from\\nthe search. An example if Q# was used to describe\\npyro-glu formation (UNIMOD:28), and S* and T* was\\nused to describe phosphorylation (UNIMOD:21), we\\nwould use the option -p *:21:#:28"
    var_24: ""
    pattern: "Pattern used to identify the decoy PSMs. Default =\\n\\\"random\\\"."
    f: ""
    databases: "Link to the fasta database/s used in the search\\nagainst the spectra file/s\\n<target.fasta,[decoy.fasta]> (Including this option\\nwill add the proteins to the generated pin file)."
    c: ""
    cleavages: "Number of allowed miss cleavages used in the search\\nengine (default 0)(Only valid when using option -F)."
    l: ""
    min_length: "Minimum peptide length allowed used in the search\\nengine (default 6)(Only valid when using option -F)."
    t: ""
    max_length: "Maximum peptide length allowed used in the search\\nengine (default 40)(Only valid when using option\\n-F)."
    w: ""
    min_mass: "Minimum peptide mass allowed used in the search\\nengine (default 400)(Only valid when using option\\n-F)."
    x: ""
    max_mass: "Maximum peptide mass allowed used in the search\\nengine (default 6000)(Only valid when using option\\n-F).\\n"
    file: "-m <number>"
    modifications: "-e"
  }
  output {
    File out_stdout = stdout()
    File out_output_tab = "${in_output_tab}"
    File out_output_xml = "${in_output_xml}"
  }
}