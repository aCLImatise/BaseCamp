version 1.0

task GetAbundance {
  input {
    Float? filter_assignments_based
    File? directory_path_same
    Int? resultcsv_resultncsvresults_file
    Boolean? minabundance_output_estimations
    Boolean? high_confidence
    Boolean? krona
    Boolean? mpa
  }
  command <<<
    getAbundance \
      ~{if defined(filter_assignments_based) then ("-g " +  '"' + filter_assignments_based + '"') else ""} \
      ~{if defined(directory_path_same) then ("-D " +  '"' + directory_path_same + '"') else ""} \
      ~{if defined(resultcsv_resultncsvresults_file) then ("-F " +  '"' + resultcsv_resultncsvresults_file + '"') else ""} \
      ~{if (minabundance_output_estimations) then "-a" else ""} \
      ~{if (high_confidence) then "--highconfidence" else ""} \
      ~{if (krona) then "--krona" else ""} \
      ~{if (mpa) then "--mpa" else ""}
  >>>
  parameter_meta {
    filter_assignments_based: "To filter assignments based on their gamma score (if available) using the\\nthreshold value minGamma (a value between 0 and 1.0).\\nThe abundance estimation for each target will count only\\nassignments with a gamma score higher than minGamma.\\nAssignments that have a gamma score lower than minGamma\\nwill be marked as unclassified and so counted in the\\ncategory UNKNOWN in the abundance estimation report.\\nThe default value is 0."
    directory_path_same: "The directory path of the database (the same you indicated when calling set_targets.sh).\\nThis parameter is required to load scientific names of all targets ONLY if you pass\\nresults of a metagenomic sample."
    resultcsv_resultncsvresults_file: ".csv <result2>.csv ... <result_n>.csv\\nresults file or list of results file produced by CLARK.\\nImportant Note: You can pass a results file produced by any mode of execution of CLARK\\n(full, express, spectrum, default), but if you pass several files, make sure they all have\\nbeen produced by the same mode. For example, if you pass result1.csv and result2.csv\\nthen result1.csv and result2.csv should be produced through the same mode (e.g., full mode)."
    minabundance_output_estimations: "<minAbundance(%)>                     To output only estimations that are higher than a certain threshold, minAbundance.\\nminAbundance is a percentage value (between 0 and 100)."
    high_confidence: "To count only high confidence assignments for the abundance estimation.\\nThis option is equivalent to '-c 0.75 -g 0.03', in this version."
    krona: "To export results in a 3-column file (i.e., taxon_id,taxon_id,magnitude) for\\nthe Krona tool (Hierarchical data browser, Ondov et al, BMC Bioinformatics, 2011,\\ndoi: 10.1186/1471-2105-12-385. https://github.com/marbl/Krona/wiki).\\nWith this option on, the program will create the file 'results.krn' containing\\nthe unnormalized abundance from CLARK's assignments (with the filtering options if any).\\nThen, to create the Krona diagram, run ktImportTaxonomy with the option '-m 3', for example:\\n$ ktImportTaxonomy-o results.html -m 3 results.krn"
    mpa: "To export results in the MetaPhlan's mpa format. A two-column file, where the first column,\\nis the taxonomy rank and the second column is the total number of reads mapped to that rank or below.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}