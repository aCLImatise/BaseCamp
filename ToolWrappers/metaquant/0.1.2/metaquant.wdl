version 1.0

task Metaquant {
  input {
    String? mode
    File? s_amps
    Int? int_file
    File? pep_colname
    File? outfile
    File? func_file
    String? ontology
    File? obo_path
    File? slim_path
    Boolean? slim_down
    Boolean? update_obo
    File? tax_file
    File? tax_colname
    Boolean? test
    Boolean? paired
    String t_tests_dot
  }
  command <<<
    metaquant \
      ~{t_tests_dot} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(s_amps) then ("--samps " +  '"' + s_amps + '"') else ""} \
      ~{if defined(int_file) then ("--int_file " +  '"' + int_file + '"') else ""} \
      ~{if defined(pep_colname) then ("--pep_colname " +  '"' + pep_colname + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(func_file) then ("--func_file " +  '"' + func_file + '"') else ""} \
      ~{if defined(ontology) then ("--ontology " +  '"' + ontology + '"') else ""} \
      ~{if defined(obo_path) then ("--obo_path " +  '"' + obo_path + '"') else ""} \
      ~{if defined(slim_path) then ("--slim_path " +  '"' + slim_path + '"') else ""} \
      ~{if (slim_down) then "--slim_down" else ""} \
      ~{if (update_obo) then "--update_obo" else ""} \
      ~{if defined(tax_file) then ("--tax_file " +  '"' + tax_file + '"') else ""} \
      ~{if defined(tax_colname) then ("--tax_colname " +  '"' + tax_colname + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (paired) then "--paired" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: "Analysis mode. If taxfun is chosen, both function and\\ntaxonomy files must be provided"
    s_amps: "Give the column names in the intensity file that\\ncorrespond to a given sample group. This can either be\\nJSON formatted or be a path to a tabular file. JSON\\nexample of two experimental groups and two samples in\\neach group: {\\\"A\\\": [\\\"A1\\\", \\\"A2\\\"], \\\"B\\\": [\\\"B1\\\", \\\"B2\\\"]}"
    int_file: "Path to the file with intensity data. Must be tabular,\\nhave a peptide sequence column, and be raw,\\nuntransformed intensity values. Missing values can be\\n0, NA, or NaN- transformed to NA for analysis"
    pep_colname: "The column name within the intensity, function, and/or\\ntaxonomy file that corresponds to the peptide\\nsequences."
    outfile: "Output file"
    func_file: "Path to file with function. The file must be tabular,\\nwith a peptide sequence column and either a GO-term\\ncolumn (named \\\"go\\\") and/or a COG column (named \\\"cog\\\")."
    ontology: "Which functional terms to use. This also corresponds\\nto the column name in func_file"
    obo_path: "Path to full obo. If obo_path does not exist, the file\\nwill be downloaded."
    slim_path: "Path to generic slim obo. If slim_path does not exist,\\nthe file will be downloaded."
    slim_down: "Flag. If provided, terms are mapped from the full OBO\\nto the slim OBO. Terms not in the full OBO will be\\nskipped."
    update_obo: "Flag. If provided, the most recent OBO file is\\ndownloaded to obo_path, and if slim_down, the most\\nrecent generic slim is downloaded as well. Caution:\\nwill overwrite anything at these locations."
    tax_file: "Path to (tabular) file with taxonomy assignments.\\nThere should be a peptide sequence column with name\\npep_colname, and a taxonomy column with name\\ntax_colname"
    tax_colname: "Name of taxonomy column in tax file. The column must\\nbe either NCBI taxids (strongly preferred) or taxonomy\\nnames. Unipept name output is known to function well,\\nbut other formats may not work."
    test: "Perform t-tests on the summed intensities.FDR-\\ncorrected q-values are returned."
    paired: "If --test and --paired are provided, perform paired"
    t_tests_dot: "--threshold THRESHOLD"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_tax_colname = "${in_tax_colname}"
  }
}