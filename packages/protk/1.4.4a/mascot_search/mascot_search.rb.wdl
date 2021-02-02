version 1.0

task MascotSearchrb {
  input {
    File? replace_output
    File? explicitly_named_output
    File? database
    String? enzyme
    String? var_mods
    String? fix_mods
    String? instrument
    String? fragment_ion_to_l_units
    String? precursor_ion_to_l_units
    Float? fragment_ion_to_l
    Int? precursor_ion_to_l
    String? search_type
    Int? num_missed_cleavages
    Boolean? glyco
    Boolean? acetyl_n_term
    Boolean? methionine_o
    Boolean? carb_amido_methyl
    Directory? server
    Int? allowed_charges
    String? quantitation
    String? email
    String? username
    String? proxy
    String? password
    Boolean? use_security
    File? download_only
    File? timeout
    String msms_file_do_tmgf
  }
  command <<<
    mascot_search_rb \
      ~{msms_file_do_tmgf} \
      ~{if (replace_output) then "--replace-output" else ""} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(var_mods) then ("--var-mods " +  '"' + var_mods + '"') else ""} \
      ~{if defined(fix_mods) then ("--fix-mods " +  '"' + fix_mods + '"') else ""} \
      ~{if defined(instrument) then ("--instrument " +  '"' + instrument + '"') else ""} \
      ~{if defined(fragment_ion_to_l_units) then ("--fragment-ion-tol-units " +  '"' + fragment_ion_to_l_units + '"') else ""} \
      ~{if defined(precursor_ion_to_l_units) then ("--precursor-ion-tol-units " +  '"' + precursor_ion_to_l_units + '"') else ""} \
      ~{if defined(fragment_ion_to_l) then ("--fragment-ion-tol " +  '"' + fragment_ion_to_l + '"') else ""} \
      ~{if defined(precursor_ion_to_l) then ("--precursor-ion-tol " +  '"' + precursor_ion_to_l + '"') else ""} \
      ~{if defined(search_type) then ("--search-type " +  '"' + search_type + '"') else ""} \
      ~{if defined(num_missed_cleavages) then ("--num-missed-cleavages " +  '"' + num_missed_cleavages + '"') else ""} \
      ~{if (glyco) then "--glyco" else ""} \
      ~{if (acetyl_n_term) then "--acetyl-nterm" else ""} \
      ~{if (methionine_o) then "--methionineo" else ""} \
      ~{if (carb_amido_methyl) then "--carbamidomethyl" else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(allowed_charges) then ("--allowed-charges " +  '"' + allowed_charges + '"') else ""} \
      ~{if defined(quantitation) then ("--quantitation " +  '"' + quantitation + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(proxy) then ("--proxy " +  '"' + proxy + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if (use_security) then "--use-security" else ""} \
      ~{if defined(download_only) then ("--download-only " +  '"' + download_only + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""}
  >>>
  parameter_meta {
    replace_output: "Dont skip analyses for which the output file already exists [false]"
    explicitly_named_output: "An explicitly named output file."
    database: "Specify the database to use for this search. Can be a named protk database or the path to a fasta file [sphuman]"
    enzyme: "Enzyme [Trypsin]"
    var_mods: "Variable modifications. These should be provided in a comma separated list"
    fix_mods: "Fixed modifications. These should be provided in a comma separated list"
    instrument: "Instrument [ESI-QUAD-TOF]"
    fragment_ion_to_l_units: "Fragment ion mass tolerance units (Da or mmu). [Da]"
    precursor_ion_to_l_units: "Precursor ion mass tolerance units (ppm or Da). [ppm]"
    fragment_ion_to_l: "Fragment ion mass tolerance (unit dependent). [0.65]"
    precursor_ion_to_l: "Precursor ion mass tolerance. [200]"
    search_type: "Use monoisotopic or average precursor masses. (monoisotopic or average) [monoisotopic]"
    num_missed_cleavages: "Number of missed cleavages allowed [2]"
    glyco: "Expect N-Glycosylation modifications as variable mod in a search or as a parameter when building statistical models [false]"
    acetyl_n_term: "Expect N-terminal acetylation as a variable mod in a search or as a parameter when building statistical models [false]"
    methionine_o: "Expect Oxidised Methionine modifications as variable mod in a search [false]"
    carb_amido_methyl: "Expect Carbamidomethyl C modifications as fixed mod in a search [false]"
    server: "The url to the cgi directory of the mascot server [www.matrixscience.com/mascot/cgi]"
    allowed_charges: "Allowed precursor ion charges. [1+,2+,3+]"
    quantitation: "Mascot quant method"
    email: "User email."
    username: "Username."
    proxy: "The url to a proxy server"
    password: "Password to use when Mascot security is enabled"
    use_security: "When Mascot security is enabled this is required [false]"
    download_only: "Specify a relative path to an existing results file on the server for download eg(20131113/F227185.dat)"
    timeout: "Timeout for sending data file to mascot in seconds [200]"
    msms_file_do_tmgf: ""
  }
  output {
    File out_stdout = stdout()
    File out_replace_output = "${in_replace_output}"
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}