version 1.0

task ReadsFromMap.py {
  input {
    String? input_reads
    String? input_map
    String? output_map
    String? operation
  }
  command <<<
    reads_from_map.py \
      ~{if defined(input_reads) then ("--input_reads " +  '"' + input_reads + '"') else ""} \
      ~{if defined(input_map) then ("--input_map " +  '"' + input_map + '"') else ""} \
      ~{if defined(output_map) then ("--output_map " +  '"' + output_map + '"') else ""} \
      ~{if defined(operation) then ("--operation " +  '"' + operation + '"') else ""}
  >>>
  parameter_meta {
    input_reads: "The input file containing the list of reads names to be removed from the MAP BOWTIE file."
    input_map: "The input file in Bowtie MAP format from where the reads will be removed."
    output_map: "The output text file containing all reads from the input MAP BOWTIE file except the ones which have been removed."
    operation: "Type of operation to be performed. The choices are ['remove','extract']. Default is 'remove'."
  }
}