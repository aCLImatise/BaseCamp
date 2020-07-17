version 1.0

task Sra2illumina.py {
  input {
    String? input_one
    String? input_two
    String? output_one
    String? output_two
    String? tag_read_name
    Boolean? phred_six_four
    Boolean? phred_three_three
    Boolean? no_one_two
    String? tmp_dir
    String? link
  }
  command <<<
    sra2illumina.py \
      ~{if defined(input_one) then ("--input_1 " +  '"' + input_one + '"') else ""} \
      ~{if defined(input_two) then ("--input_2 " +  '"' + input_two + '"') else ""} \
      ~{if defined(output_one) then ("--output_1 " +  '"' + output_one + '"') else ""} \
      ~{if defined(output_two) then ("--output_2 " +  '"' + output_two + '"') else ""} \
      ~{if defined(tag_read_name) then ("--tag_read_name " +  '"' + tag_read_name + '"') else ""} \
      ~{true="--phred64" false="" phred_six_four} \
      ~{true="--phred33" false="" phred_three_three} \
      ~{true="--no12" false="" no_one_two} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(link) then ("--link " +  '"' + link + '"') else ""}
  >>>
  parameter_meta {
    input_one: "The input FASTQ file downloaded from SRA."
    input_two: "The input FASTQ file downloaded from SRA."
    output_one: "The output FASTQ file in Illumina format."
    output_two: "The output FASTQ file in Illumina format."
    tag_read_name: "This tag is added to the beginning of each read name in order to make them unique in case that multiple FASTQ files need to be merged."
    phred_six_four: "If it is used then the PHRED-33 qualities from the input SRA are converted to PHRED-64 qualities."
    phred_three_three: "If it is used then the PHRED-64 qualities from the input SRA are converted to PHRED-33 qualities."
    no_one_two: "By default to all reads /1 and /2 will be added to the reads ids. By using this no adding is done."
    tmp_dir: "The directory which should be used as temporary directory. By default is the OS temporary directory."
    link: "If it is set to 'change' always the reads names from the input files are changed and no actual checking is done to see if it is indeed a FASTQ file containing a SRA-like reads names. For 'soft', 'hard', and 'copy' a checking is done to see if the reads names look like SRA names and if yes then their names will be changed to new ones. In this case it creates a link from the output file to the input file of type (soft,hard,copy,change) in case that no operation is done on the input file. The choices are: soft,hard,copy,change. Default is 'change'."
  }
}