version 1.0

task CapCpair2bg {
  input {
    Boolean? pairfile_input_file
    Boolean? bgfile_file_name
    Boolean? targetname_name_target
    Boolean? chromstartend_genomic_location
    Boolean? inter_chrom
  }
  command <<<
    capCpair2bg \
      ~{true="-i" false="" pairfile_input_file} \
      ~{true="-o" false="" bgfile_file_name} \
      ~{true="-n" false="" targetname_name_target} \
      ~{true="-t" false="" chromstartend_genomic_location} \
      ~{true="--interchrom" false="" inter_chrom}
  >>>
  parameter_meta {
    pairfile_input_file: "pairfile       is the input file name; can use this option more than once to combine multiple targets into one"
    bgfile_file_name: "bgfile         is the file name for the output bedGraph"
    targetname_name_target: "targetname     is the name of the target"
    chromstartend_genomic_location: "chrom:start-end  is the genomic location of the target site; can use this option more than once if multiple pair files are specified."
    inter_chrom: "flag to specify interchromosomal interactions are present"
  }
}