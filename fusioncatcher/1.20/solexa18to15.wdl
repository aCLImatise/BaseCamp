version 1.0

task Solexa18to15.py {
  input {
    String? input_file_version
    String? output_fastq_file
    Boolean? skip_filter
    Boolean? fail
    String? link
  }
  command <<<
    solexa18to15.py \
      ~{if defined(input_file_version) then ("--input " +  '"' + input_file_version + '"') else ""} \
      ~{if defined(output_fastq_file) then ("--output " +  '"' + output_fastq_file + '"') else ""} \
      ~{true="--skip_filter" false="" skip_filter} \
      ~{true="--fail" false="" fail} \
      ~{if defined(link) then ("--link " +  '"' + link + '"') else ""}
  >>>
  parameter_meta {
    input_file_version: "The input file (in the newer Solexa FASTQ format, i.e. version 1.8 or newer) containing the short reads to be processed."
    output_fastq_file: "The output FASTQ file containing the short read such that the read names are changed in such way that they end with /1 or /2. If the input file contains reads which end in /1 or /2 then the reads will be copied to the output without any modification"
    skip_filter: "It filters out the reads which have been marked by Illumina as filtered. Default is False."
    fail: "In case that the short reads names do not end with /1 or /2 or are not in format '@GQWE8:57:C00T6ABXX:2:1101:1233:2230 1:N:0:CTTGTA' then the script will exit with an exit error code. Default is False."
    link: "It creates a link from the output file to the input file of type (soft,hard,copy) in case that no operation is done on the input file. Default is 'soft'."
  }
}