version 1.0

task CapClocation2fragment {
  input {
    Boolean? restfragfile_filename_bed
    Boolean? outfile_filename_output
    Boolean? inputfile_filename_bed
    Boolean? location_single_genomic
  }
  command <<<
    capClocation2fragment \
      ~{true="-r" false="" restfragfile_filename_bed} \
      ~{true="-o" false="" outfile_filename_output} \
      ~{true="-i" false="" inputfile_filename_bed} \
      ~{true="-l" false="" location_single_genomic}
  >>>
  parameter_meta {
    restfragfile_filename_bed: "restfragfile    filename for bed file containing the list of restriction fragments"
    outfile_filename_output: "outfile         filename for output bed file (if not present output with be sent to stdout)"
    inputfile_filename_bed: "inputfile       filename for bed file containing genomic locations"
    location_single_genomic: "location        is a single genomic location in format chr1:1234-5678 "
  }
}