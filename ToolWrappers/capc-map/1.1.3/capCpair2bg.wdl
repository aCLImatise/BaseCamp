version 1.0

task CapCpair2bg {
  input {
    Boolean? pairfile_input_file
    File? bgfile_file_name
    Boolean? targetname_name_target
    Boolean? genomic_location_target
    Boolean? inter_chrom
  }
  command <<<
    capCpair2bg \
      ~{if (pairfile_input_file) then "-i" else ""} \
      ~{if (bgfile_file_name) then "-o" else ""} \
      ~{if (targetname_name_target) then "-n" else ""} \
      ~{if (genomic_location_target) then "-t" else ""} \
      ~{if (inter_chrom) then "--interchrom" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pairfile_input_file: "pairfile       is the input file name; can use this option more\\nthan once to combine multiple targets into one"
    bgfile_file_name: "bgfile         is the file name for the output bedGraph"
    targetname_name_target: "targetname     is the name of the target"
    genomic_location_target: "chrom:start-end  is the genomic location of the target site; can\\nuse this option more than once if multiple pair\\nfiles are specified."
    inter_chrom: "flag to specify interchromosomal interactions are present"
  }
  output {
    File out_stdout = stdout()
    File out_bgfile_file_name = "${in_bgfile_file_name}"
  }
}