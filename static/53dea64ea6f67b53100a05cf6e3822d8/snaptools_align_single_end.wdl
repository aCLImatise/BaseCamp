version 1.0

task SnaptoolsAlignsingleend {
  input {
    File? input_reference
    Int? input_fast_q_one
    File? output_bam
    Int? aligner
    File? path_to_aligner
    Array[String] aligner_options
    File? read_fast_q_command
    Int? num_threads
    Int? min_cov
    File? if_sort
    Directory? tmp_folder
    File? overwrite
  }
  command <<<
    snaptools align_single_end \
      ~{if defined(input_reference) then ("--input-reference " +  '"' + input_reference + '"') else ""} \
      ~{if defined(input_fast_q_one) then ("--input-fastq1 " +  '"' + input_fast_q_one + '"') else ""} \
      ~{if defined(output_bam) then ("--output-bam " +  '"' + output_bam + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(path_to_aligner) then ("--path-to-aligner " +  '"' + path_to_aligner + '"') else ""} \
      ~{if defined(aligner_options) then ("--aligner-options " +  '"' + aligner_options + '"') else ""} \
      ~{if defined(read_fast_q_command) then ("--read-fastq-command " +  '"' + read_fast_q_command + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(if_sort) then ("--if-sort " +  '"' + if_sort + '"') else ""} \
      ~{if defined(tmp_folder) then ("--tmp-folder " +  '"' + tmp_folder + '"') else ""} \
      ~{if defined(overwrite) then ("--overwrite " +  '"' + overwrite + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_reference: "reference genome file contains the reference genome\\nthat reads are mapped against, the genome index must\\nbe under the same folder (default: None)"
    input_fast_q_one: "fastq file contains R1 reads, currently supports\\nfastq, gz, bz2 file (default: None)"
    output_bam: "output bam file contains unfiltered alignments\\n(default: None)"
    aligner: "aligner to use. Currently, snaptools supports bwa,\\nbowtie, bowtie2 and minimap2. (default: bwa)"
    path_to_aligner: "path to fold that contains bwa (default: None)"
    aligner_options: "list of strings indicating options you would like\\npassed to alignerstrongly do not recommand to change\\nunless you know what you are doing. (default: None)"
    read_fast_q_command: "command line to execute for each of the input file.\\nThis commandshould generate FASTA or FASTQ text and\\nsend it to stdout (default: None)"
    num_threads: "number of alignment threads (default: 1)"
    min_cov: "min number of fragments per barcode. barcodes of total\\nfragments less than --min-cov will be filreted before\\nalingment. Note: though this feature is included, we\\nfound it barely speed up the process, so recommand to\\nset it to be 0. (default: 0)"
    if_sort: "weather to sort the bam file based on the read name\\n(default: True)"
    tmp_folder: "directory to store temporary files. If not given,\\nsnaptools will automaticallygenerate a temporary\\nlocation to store temporary files (default: None)"
    overwrite: "whether to overwrite the output file if it already\\nexists (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_bam = "${in_output_bam}"
    File out_overwrite = "${in_overwrite}"
  }
}