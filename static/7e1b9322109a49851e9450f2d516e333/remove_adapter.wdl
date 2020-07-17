version 1.0

task RemoveAdapter.py {
  input {
    String? input_one
    String? input_two
    String? output_one
    String? output_two
    String? log
    String? alignment_log
    String? reads_overlap
    String? len_adapter
    String? shortest_read
    String? threshold_infer_adapter
    String? reads_infer_adapter
    String? trim_n
    String? link
    Boolean? quiet
    String? author
    String? processes
  }
  command <<<
    remove-adapter.py \
      ~{if defined(input_one) then ("--input_1 " +  '"' + input_one + '"') else ""} \
      ~{if defined(input_two) then ("--input_2 " +  '"' + input_two + '"') else ""} \
      ~{if defined(output_one) then ("--output_1 " +  '"' + output_one + '"') else ""} \
      ~{if defined(output_two) then ("--output_2 " +  '"' + output_two + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(alignment_log) then ("--alignment_log " +  '"' + alignment_log + '"') else ""} \
      ~{if defined(reads_overlap) then ("--reads_overlap " +  '"' + reads_overlap + '"') else ""} \
      ~{if defined(len_adapter) then ("--len_adapter " +  '"' + len_adapter + '"') else ""} \
      ~{if defined(shortest_read) then ("--shortest_read " +  '"' + shortest_read + '"') else ""} \
      ~{if defined(threshold_infer_adapter) then ("--threshold_infer_adapter " +  '"' + threshold_infer_adapter + '"') else ""} \
      ~{if defined(reads_infer_adapter) then ("--reads_infer_adapter " +  '"' + reads_infer_adapter + '"') else ""} \
      ~{if defined(trim_n) then ("--trim-n " +  '"' + trim_n + '"') else ""} \
      ~{if defined(link) then ("--link " +  '"' + link + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""}
  >>>
  parameter_meta {
    input_one: "The input FASTQ file containing the reads from 5' fragment end (i.e. 5'-3' orientation for read 1 and 3'-5' for read 2 which needs to be reversed- complemented)."
    input_two: "The input FASTQ file containing the reads from 3' fragment end (i.e. 5'-3' orientation for read 1 and 3'-5' for read 2 which needs to be reversed- complemented)."
    output_one: "The output FASTQ file where the reads are trimmed."
    output_two: "The output FASTQ file where the reads are trimmed."
    log: "It outputs a detalied statistics of the trimming."
    alignment_log: "It outputs also the alignment for each found overlapping."
    reads_overlap: "The minimum length of the region which is considered an overlap. Default is 10."
    len_adapter: "The length of the adapter which is found automaticaly and further used for trimming. Default is 13."
    shortest_read: "The reads stricly shorter than 20 after the adapter trimming will be removed (i.e. replaced with a read of length one containing the sequence 'N'). Default is 20."
    threshold_infer_adapter: "The percentage of reads which should contain the found candidate-adapter (during the automatic adapter- finding step) in order to be considered a real adapter and used further for trimming. The range is [0..1]. Default is 0.0001."
    reads_infer_adapter: "The number of first reads which are used for finding automatically the adapter. If it is set to 0 then all the reads from the files are used. Default is 3000000."
    trim_n: "The number of Ns needed to be found in order the trimming of Ns (from both reads ends) is done. Default is 0."
    link: "The type of link between the input and output file when there are no changes done. The choices are ['soft','hard']. Default is 'soft'."
    quiet: "Do not print status messages to stdout."
    author: "Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com"
    processes: "Maximum number of parallel processes/CPUs to be used for computations. In case of value 0 then the program will try to use, if it see fit, all the CPUs which are found. The default value is 0."
  }
}