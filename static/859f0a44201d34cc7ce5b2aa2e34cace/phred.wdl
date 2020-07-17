version 1.0

task Phred.py {
  input {
    String? input_file_fastq
    String? input_type
    String? output_fastq_file
    String? output_type
    String? tmp_dir
    String? link
  }
  command <<<
    phred.py \
      ~{if defined(input_file_fastq) then ("--input " +  '"' + input_file_fastq + '"') else ""} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""} \
      ~{if defined(output_type) then ("--output_type " +  '"' + output_type + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(link) then ("--link " +  '"' + link + '"') else ""}
  >>>
  parameter_meta {
    input_file_fastq: "The input file in FASTQ format."
    input_type: "Type quality encoding used in the FASTQ input file. The choices are: [sanger,solexa,illumina,auto-detect]"
    output_fastq_file: "The output FASTQ file."
    output_type: "Type quality encoding used in the FASTQ output file. The choices are: [sanger,solexa,illumina,illumina-1.5]"
    tmp_dir: "The directory which should be used as temporary directory. By default is the OS temporary directory."
    link: "It creates a link from the output file to the input file of type (soft,hard,copy) in case that no operation is done on the input file. Default is 'soft'."
  }
}