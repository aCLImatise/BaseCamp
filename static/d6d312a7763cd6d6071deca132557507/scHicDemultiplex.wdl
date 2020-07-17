version 1.0

task ScHicDemultiplex {
  input {
    String? fastq_files_demultiplex_ri
    String? barcode_file
    String? srr_to_sample_file
    Directory? output_folder
    String? threads
    String? buffer_size
    String of
    String var_7
    File files
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
      ~{if defined(fastq_files_demultiplex_ri) then ("--fastq " +  '"' + fastq_files_demultiplex_ri + '"') else ""} \
      ~{if defined(barcode_file) then ("--barcodeFile " +  '"' + barcode_file + '"') else ""} \
      ~{if defined(srr_to_sample_file) then ("--srrToSampleFile " +  '"' + srr_to_sample_file + '"') else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(buffer_size) then ("--bufferSize " +  '"' + buffer_size + '"') else ""}
  >>>
  parameter_meta {
    fastq_files_demultiplex_ri: "of fastq files to demultiplex [list of fastq files to demultiplex ...], -f list of fastq files to demultiplex [list of fastq files to demultiplex ...] The fastq files to demultiplex of Nagano 2017 Cell cycle dynamics of chromosomal organization at single- cell resolutionGEO: GSE94489. Files need to have four FASTQ lines per read:/1 forward; /2 barcode forward; /3 bardcode reverse; /4 reverse read.Please be aware the files can be downloaded via the command fastq-dump to be in the right format:fastq-dump --accession SRR5229025 --split-files --defline-seq '@$sn[_$rn]/$ri' --defline-qual '+' --split-spot --stdout SRR5229025 > SRR5229025.fastq (default: None)"
    barcode_file: "of fastq files to demultiplex. Use GSE94489_README.txt file., -bf list of fastq files to demultiplex. Use GSE94489_README.txt file. The fastq files to demultiplex (default: None)"
    srr_to_sample_file: "The mappings from SRR number to sample id as given in the barcode file. (default: None)"
    output_folder: "Path of folder to save the demultiplexed files (default: demultiplexed)"
    threads: "Number of threads. Using the python multiprocessing module. (default: 4)"
    buffer_size: "Number of lines to buffer in memory, if full, write the data to disk. (default: 20000000.0)"
    of: ""
    var_7: ""
    files: ""
    to: ""
    demultiplex: ""
  }
}