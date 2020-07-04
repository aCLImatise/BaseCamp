version 1.0

task SnaptoolsAlignPairedEnd {
  input {
    String? input_reference
    String? input_fast_q_one
    String? input_fast_q_two
    String? output_bam
    String? aligner
    File? path_to_aligner
    Array[String] aligner_options
    String? read_fast_q_command
    Int? min_cov
    String? num_threads
    String? if_sort
    String? tmp_folder
    String? overwrite
    String? verbose
  }
  command <<<
    snaptools align-paired-end \
      ~{if defined(input_reference) then ("--input-reference " +  '"' + input_reference + '"') else ""} \
      ~{if defined(input_fast_q_one) then ("--input-fastq1 " +  '"' + input_fast_q_one + '"') else ""} \
      ~{if defined(input_fast_q_two) then ("--input-fastq2 " +  '"' + input_fast_q_two + '"') else ""} \
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
    input_reference: "reference genome file contains the reference genome that reads are mapped against, the genome index must be under the same folder (default: None)"
    input_fast_q_one: "fastq file contains R1 reads, currently supports fastq, gz, bz2 file (default: None)"
    input_fast_q_two: "fastq file contains R2 reads, currently supports fastq, gz, bz2 file (default: None)"
    output_bam: "output bam file contains unfiltered alignments (default: None)"
    aligner: "aligner to use. Currently, snaptools supports bwa, bowtie, bowtie2 and minimap2. (default: bwa)"
    path_to_aligner: "path to fold that contains bwa (default: None)"
    aligner_options: "list of strings indicating options you would like passed to alignerstrongly do not recommand to change unless you know what you are doing. the default is to align reads without filteration. (default: None)"
    read_fast_q_command: "command line to execute for each of the input file. This command should generate FASTQ text and send it to stdout. For example, --read-fastq-command should be zcat, bzcat and cat for .gz, .bz2 and plain fastq file respectively (default: None)"
    min_cov: "min number of fragments per barcode. barcodes of total fragments less than --min-cov will be filreted before alingment. Note: though this feature is included, we found it barely benefit anything, recommand to set it 0. (default: 0)"
    num_threads: "number of alignment threads, also number of threads for sorting a bam file. (default: 1)"
    if_sort: "weather to sort the bam file based on the read name (default: True)"
    tmp_folder: "directory to store temporary files. If not given, snaptools will automaticallygenerate a temporary location to store temporary files (default: None)"
    overwrite: "whether to overwrite the output file if it already exists (default: False)"
    verbose: "a boolen tag indicates output the progress. (default: True)"
  }
}