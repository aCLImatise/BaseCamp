version 1.0

task SnaptoolsAlignSingleEnd {
  input {
    String? input_reference
    String? input_fast_q_one
    String? output_bam
    String? aligner
    File? path_to_aligner
    Array[String] aligner_options
    String? read_fast_q_command
    String? num_threads
    Int? min_cov
    String? if_sort
    String? tmp_folder
    String? overwrite
  }
  command <<<
    snaptools align-single-end \
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
  parameter_meta {
    input_reference: "reference genome file contains the reference genome that reads are mapped against, the genome index must be under the same folder (default: None)"
    input_fast_q_one: "fastq file contains R1 reads, currently supports fastq, gz, bz2 file (default: None)"
    output_bam: "output bam file contains unfiltered alignments (default: None)"
    aligner: "aligner to use. Currently, snaptools supports bwa, bowtie, bowtie2 and minimap2. (default: bwa)"
    path_to_aligner: "path to fold that contains bwa (default: None)"
    aligner_options: "list of strings indicating options you would like passed to alignerstrongly do not recommand to change unless you know what you are doing. (default: None)"
    read_fast_q_command: "command line to execute for each of the input file. This commandshould generate FASTA or FASTQ text and send it to stdout (default: None)"
    num_threads: "number of alignment threads (default: 1)"
    min_cov: "min number of fragments per barcode. barcodes of total fragments less than --min-cov will be filreted before alingment. Note: though this feature is included, we found it barely speed up the process, so recommand to set it to be 0. (default: 0)"
    if_sort: "weather to sort the bam file based on the read name (default: True)"
    tmp_folder: "directory to store temporary files. If not given, snaptools will automaticallygenerate a temporary location to store temporary files (default: None)"
    overwrite: "whether to overwrite the output file if it already exists (default: False)"
  }
}