version 1.0

task LorikeetFixlineages {
  input {
    String? _input_output
    File? _output_valueoutput
    File? _tree_valuephylogenetic
    String? _snpmatrix_valuematrix
    Int? distance
    Float? fraction
    String? jar
    String java
    String fix_lineages
  }
  command <<<
    lorikeet fix_lineages \
      ~{java} \
      ~{fix_lineages} \
      ~{if defined(_input_output) then ("-i " +  '"' + _input_output + '"') else ""} \
      ~{if defined(_output_valueoutput) then ("-o " +  '"' + _output_valueoutput + '"') else ""} \
      ~{if defined(_tree_valuephylogenetic) then ("-t " +  '"' + _tree_valuephylogenetic + '"') else ""} \
      ~{if defined(_snpmatrix_valuematrix) then ("-s " +  '"' + _snpmatrix_valuematrix + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    _input_output: "| --input <value>\\nInput lineage information. (Output of merge-spoligotypes)"
    _output_valueoutput: "| --output <value>\\nOutput file."
    _tree_valuephylogenetic: "| --tree <value>\\nPhylogenetic tree file in NWK format."
    _snpmatrix_valuematrix: "| --snpmatrix <value>\\nMatrix with pairwise SNP distances (created with pelican)"
    distance: "Maximum distance to consider closest neighbors. [Default=500]"
    fraction: "Fraction of closest neighbors that need to agree to perform change. [Default=0.6]\\n"
    jar: ""
    java: ""
    fix_lineages: ""
  }
  output {
    File out_stdout = stdout()
    File out__output_valueoutput = "${in__output_valueoutput}"
  }
}