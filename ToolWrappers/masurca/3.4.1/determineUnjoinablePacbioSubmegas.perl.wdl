version 1.0

task DetermineUnjoinablePacbioSubmegasperl {
  input {
    File? inputfile_name_file
    Int? min_range_radius
    Float? min_range_proportion
  }
  command <<<
    determineUnjoinablePacbioSubmegas_perl \
      ~{if defined(inputfile_name_file) then ("-f " +  '"' + inputfile_name_file + '"') else ""} \
      ~{if defined(min_range_radius) then ("--min-range-radius " +  '"' + min_range_radius + '"') else ""} \
      ~{if defined(min_range_proportion) then ("--min-range-proportion " +  '"' + min_range_proportion + '"') else ""}
  >>>
  parameter_meta {
    inputfile_name_file: "(inputFile is the name of the file with k-unitig pairs and gap sizes)"
    min_range_radius: "(int >= 0, specifies dist from center that gap sizes are accepted) (default: 10)"
    min_range_proportion: "(0<float<1, specifies proportion of center gap size that we allow for accepted gap sizes) (default: .1)"
  }
  output {
    File out_stdout = stdout()
  }
}