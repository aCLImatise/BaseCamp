version 1.0

task Metaquant {
  input {
    String? mode
    String? s_amps
    Int? int_file
    String? pep_colname
    String? outfile
    String? func_file
    String? ontology
    String? obo_path
    String? slim_path
    Boolean? slim_down
    Boolean? update_obo
    String? tax_file
    String? tax_colname
    Boolean? test
    Boolean? paired
    String? threshold
  }
  command <<<
    metaquant \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(s_amps) then ("--samps " +  '"' + s_amps + '"') else ""} \
      ~{if defined(int_file) then ("--int_file " +  '"' + int_file + '"') else ""} \
      ~{if defined(pep_colname) then ("--pep_colname " +  '"' + pep_colname + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(func_file) then ("--func_file " +  '"' + func_file + '"') else ""} \
      ~{if defined(ontology) then ("--ontology " +  '"' + ontology + '"') else ""} \
      ~{if defined(obo_path) then ("--obo_path " +  '"' + obo_path + '"') else ""} \
      ~{if defined(slim_path) then ("--slim_path " +  '"' + slim_path + '"') else ""} \
      ~{true="--slim_down" false="" slim_down} \
      ~{true="--update_obo" false="" update_obo} \
      ~{if defined(tax_file) then ("--tax_file " +  '"' + tax_file + '"') else ""} \
      ~{if defined(tax_colname) then ("--tax_colname " +  '"' + tax_colname + '"') else ""} \
      ~{true="--test" false="" test} \
      ~{true="--paired" false="" paired} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    mode: "Analysis mode. If taxfun is chosen, both function and taxonomy files must be provided"
    s_amps: "Give the column names in the intensity file that correspond to a given sample group. This can either be JSON formatted or be a path to a tabular file. JSON example of two experimental groups and two samples in each group: {\"A\": [\"A1\", \"A2\"], \"B\": [\"B1\", \"B2\"]}"
    int_file: "Path to the file with intensity data. Must be tabular, have a peptide sequence column, and be raw, untransformed intensity values. Missing values can be 0, NA, or NaN- transformed to NA for analysis"
    pep_colname: "The column name within the intensity, function, and/or taxonomy file that corresponds to the peptide sequences."
    outfile: "Output file"
    func_file: "Path to file with function. The file must be tabular, with a peptide sequence column and either a GO-term column (named \"go\") and/or a COG column (named \"cog\")."
    ontology: "Which functional terms to use. This also corresponds to the column name in func_file"
    obo_path: "Path to full obo. If obo_path does not exist, the file will be downloaded."
    slim_path: "Path to generic slim obo. If slim_path does not exist, the file will be downloaded."
    slim_down: "Flag. If provided, terms are mapped from the full OBO to the slim OBO. Terms not in the full OBO will be skipped."
    update_obo: "Flag. If provided, the most recent OBO file is downloaded to obo_path, and if slim_down, the most recent generic slim is downloaded as well. Caution: will overwrite anything at these locations."
    tax_file: "Path to (tabular) file with taxonomy assignments. There should be a peptide sequence column with name pep_colname, and a taxonomy column with name tax_colname"
    tax_colname: "Name of taxonomy column in tax file. The column must be either NCBI taxids (strongly preferred) or taxonomy names. Unipept name output is known to function well, but other formats may not work."
    test: "Perform t-tests on the summed intensities.FDR- corrected q-values are returned."
    paired: "If --test and --paired are provided, perform paired t-tests."
    threshold: "Minimum number of intensities in each sample group. Anything with lower number of intensities will be filtered out.Only applies when testing, not to descriptive statistics."
  }
}