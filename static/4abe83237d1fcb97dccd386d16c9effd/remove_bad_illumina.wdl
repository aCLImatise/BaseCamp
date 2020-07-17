version 1.0

task RemoveBadIllumina.py {
  input {
    String? input_file_version
    String? output_fastq_file
    String? link
  }
  command <<<
    remove-bad-illumina.py \
      ~{if defined(input_file_version) then ("--input " +  '"' + input_file_version + '"') else ""} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""} \
      ~{if defined(link) then ("--link " +  '"' + link + '"') else ""}
  >>>
  parameter_meta {
    input_file_version: "The input file (in the newer Solexa FASTQ format, i.e. version 1.8 or newer) containing the short reads to be processed."
    output_fastq_file: "The output FASTQ file containing the short reads which are marked as good by Illumina."
    link: "It creates a link from the output file to the input file of type (soft,hard,copy) in case that no operation is done on the input file. Default is 'soft'."
  }
}