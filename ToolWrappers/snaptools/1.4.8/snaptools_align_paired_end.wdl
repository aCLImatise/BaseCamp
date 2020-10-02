version 1.0

task SnaptoolsAlignpairedend {
  input {
    Int? input_fast_q_one
    File? input_reference
    File? output_bam
    Int? aligner
    File? path_to_aligner
    Array[String] aligner_options
    File? read_fast_q_command
    Int? min_cov
    Int? num_threads
    File? if_sort
    Directory? tmp_folder
    File? overwrite
    String? verbose
  }
  command <<<
    snaptools align_paired_end \
      ~{if defined(input_fast_q_one) then ("--input-fastq1 " +  '"' + input_fast_q_one + '"') else ""} \
      ~{if defined(input_reference) then ("--input-reference " +  '"' + input_reference + '"') else ""} \
      ~{if defined(output_bam) then ("--output-bam " +  '"' + output_bam + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(path_to_aligner) then ("--path-to-aligner " +  '"' + path_to_aligner + '"') else ""} \
      ~{if defined(aligner_options) then ("--aligner-options " +  '"' + aligner_options + '"') else ""} \
      ~{if defined(read_fast_q_command) then ("--read-fastq-command " +  '"' + read_fast_q_command + '"') else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(if_sort) then ("--if-sort " +  '"' + if_sort + '"') else ""} \
      ~{if defined(tmp_folder) then ("--tmp-folder " +  '"' + tmp_folder + '"') else ""} \
      ~{if defined(overwrite) then ("--overwrite " +  '"' + overwrite + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    input_fast_q_one: "INPUT_FASTQ2 --output-bam OUTPUT_BAM\\n[--aligner ALIGNER]\\n[--path-to-aligner PATH_TO_ALIGNER]\\n[--aligner-options ALIGNER_OPTIONS [ALIGNER_OPTIONS ...]]\\n[--read-fastq-command READ_FASTQ_COMMAND]\\n[--min-cov MIN_COV]\\n[--num-threads NUM_THREADS]\\n[--if-sort IF_SORT]\\n[--tmp-folder TMP_FOLDER]\\n[--overwrite OVERWRITE] [--verbose VERBOSE]"
    input_reference: "reference genome file contains the reference genome\\nthat reads are mapped against, the genome index must\\nbe under the same folder (default: None)"
    output_bam: "output bam file contains unfiltered alignments\\n(default: None)"
    aligner: "aligner to use. Currently, snaptools supports bwa,\\nbowtie, bowtie2 and minimap2. (default: bwa)"
    path_to_aligner: "path to fold that contains bwa (default: None)"
    aligner_options: "list of strings indicating options you would like\\npassed to alignerstrongly do not recommand to change\\nunless you know what you are doing. the default is to\\nalign reads without filteration. (default: None)"
    read_fast_q_command: "command line to execute for each of the input file.\\nThis command should generate FASTQ text and send it to\\nstdout. For example, --read-fastq-command should be\\nzcat, bzcat and cat for .gz, .bz2 and plain fastq file\\nrespectively (default: None)"
    min_cov: "min number of fragments per barcode. barcodes of total\\nfragments less than --min-cov will be filreted before\\nalingment. Note: though this feature is included, we\\nfound it barely benefit anything, recommand to set it\\n0. (default: 0)"
    num_threads: "number of alignment threads, also number of threads\\nfor sorting a bam file. (default: 1)"
    if_sort: "weather to sort the bam file based on the read name\\n(default: True)"
    tmp_folder: "directory to store temporary files. If not given,\\nsnaptools will automaticallygenerate a temporary\\nlocation to store temporary files (default: None)"
    overwrite: "whether to overwrite the output file if it already\\nexists (default: False)"
    verbose: "a boolen tag indicates output the progress. (default:\\nTrue)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_bam = "${in_output_bam}"
    File out_overwrite = "${in_overwrite}"
  }
}