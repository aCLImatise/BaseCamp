version 1.0

task CapClocation2fragment {
  input {
    Boolean? restfragfile_filename_bed
    File? outfile_filename_present
    Boolean? inputfile_filename_bed
    Boolean? location_single_genomic
  }
  command <<<
    capClocation2fragment \
      ~{if (restfragfile_filename_bed) then "-r" else ""} \
      ~{if (outfile_filename_present) then "-o" else ""} \
      ~{if (inputfile_filename_bed) then "-i" else ""} \
      ~{if (location_single_genomic) then "-l" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    restfragfile_filename_bed: "restfragfile    filename for bed file containing the list of restriction fragments"
    outfile_filename_present: "outfile         filename for output bed file (if not present output with be sent to stdout)"
    inputfile_filename_bed: "inputfile       filename for bed file containing genomic locations"
    location_single_genomic: "location        is a single genomic location in format chr1:1234-5678"
  }
  output {
    File out_stdout = stdout()
    File out_outfile_filename_present = "${in_outfile_filename_present}"
  }
}