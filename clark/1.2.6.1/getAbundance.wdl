version 1.0

task GetAbundance {
  input {
    Int? resultcsv_resultncsv_minabundance
  }
  command <<<
    getAbundance \
      ~{if defined(resultcsv_resultncsv_minabundance) then ("-c " +  '"' + resultcsv_resultncsv_minabundance + '"') else ""}
  >>>
  parameter_meta {
    resultcsv_resultncsv_minabundance: ".csv <result2>.csv ... <result_n>.csv -a <minAbundance> ... "
  }
}