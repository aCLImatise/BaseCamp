version 1.0

task ScHicDemultiplex {
  input {
    Int? fastq_files_demultiplex_files
    File? barcode_file
    File? srr_to_sample_file
    Directory? output_folder
    Int? threads
    Int? buffer_size
    String of
    String var_7
    String files
    String to
    String demultiplex
  }
  command <<<
    scHicDemultiplex \
      ~{of} \
      ~{var_7} \
      ~{files} \
      ~{to} \
      ~{demultiplex} \
      ~{if defined(fastq_files_demultiplex_files) then ("--fastq " +  '"' + fastq_files_demultiplex_files + '"') else ""} \
      ~{if defined(barcode_file) then ("--barcodeFile " +  '"' + barcode_file + '"') else ""} \
      ~{if defined(srr_to_sample_file) then ("--srrToSampleFile " +  '"' + srr_to_sample_file + '"') else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(buffer_size) then ("--bufferSize " +  '"' + buffer_size + '"') else ""}
  >>>
  parameter_meta {
    fastq_files_demultiplex_files: "of fastq files to demultiplex [list of fastq files to demultiplex ...], -f list of fastq files to demultiplex [list of fastq files to demultiplex ...]\\nThe fastq files to demultiplex of Nagano 2017 Cell\\ncycle dynamics of chromosomal organization at single-\\ncell resolutionGEO: GSE94489. Files need to have four\\nFASTQ lines per read:/1 forward; /2 barcode forward;\\n/3 bardcode reverse; /4 reverse read.Please be aware\\nthe files can be downloaded via the command fastq-dump\\nto be in the right format:fastq-dump --accession\\nSRR5229025 --split-files --defline-seq\\n'@$sn[_$rn]/$ri' --defline-qual '+' --split-spot\\n--stdout SRR5229025 > SRR5229025.fastq (default: None)"
    barcode_file: "of fastq files to demultiplex. Use GSE94489_README.txt file., -bf list of fastq files to demultiplex. Use GSE94489_README.txt file.\\nThe fastq files to demultiplex (default: None)"
    srr_to_sample_file: "The mappings from SRR number to sample id as given in\\nthe barcode file. (default: None)"
    output_folder: "Path of folder to save the demultiplexed files\\n(default: demultiplexed)"
    threads: "Number of threads. Using the python multiprocessing\\nmodule. (default: 4)"
    buffer_size: "Number of lines to buffer in memory, if full, write\\nthe data to disk. (default: 20000000.0)"
    of: ""
    var_7: ""
    files: ""
    to: ""
    demultiplex: ""
  }
  output {
    File out_stdout = stdout()
  }
}