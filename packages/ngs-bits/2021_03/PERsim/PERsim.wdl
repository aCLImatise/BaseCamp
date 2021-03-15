version 1.0

task PERsim {
  input {
    File? roi
    Int? count
    File? out_one
    File? out_two
    Int? length
    Int? ins_mean
    Int? ins_stdev
    Float? error
    Int? max_n
    Int? a_one
    Int? a_two
    File? ref
    Boolean? enable_verbose_debug
    Int? compression_level
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    PERsim \
      ~{if defined(roi) then ("-roi " +  '"' + roi + '"') else ""} \
      ~{if defined(count) then ("-count " +  '"' + count + '"') else ""} \
      ~{if defined(out_one) then ("-out1 " +  '"' + out_one + '"') else ""} \
      ~{if defined(out_two) then ("-out2 " +  '"' + out_two + '"') else ""} \
      ~{if defined(length) then ("-length " +  '"' + length + '"') else ""} \
      ~{if defined(ins_mean) then ("-ins_mean " +  '"' + ins_mean + '"') else ""} \
      ~{if defined(ins_stdev) then ("-ins_stdev " +  '"' + ins_stdev + '"') else ""} \
      ~{if defined(error) then ("-error " +  '"' + error + '"') else ""} \
      ~{if defined(max_n) then ("-max_n " +  '"' + max_n + '"') else ""} \
      ~{if defined(a_one) then ("-a1 " +  '"' + a_one + '"') else ""} \
      ~{if defined(a_two) then ("-a2 " +  '"' + a_two + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (enable_verbose_debug) then "-v" else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    roi: "Target region BED file."
    count: "Number of read pairs to generate."
    out_one: "Forward reads output file in .FASTQ.GZ format."
    out_two: "Reverse reads output file in .FASTQ.GZ format."
    length: "Read length for forward/reverse reads.\\nDefault value: '100'"
    ins_mean: "Library insert size mean value.\\nDefault value: '200'"
    ins_stdev: "Library insert size mean standard deviation.\\nDefault value: '70'"
    error: "Base error probability (uniform distribution).\\nDefault value: '0.01'"
    max_n: "Maximum number of N bases (from reference genome).\\nDefault value: '5'"
    a_one: "Forward read sequencing adapter sequence (for read-through).\\nDefault value: 'AGATCGGAAGAGCACACGTCTGAACTCCAGTCACGAGTTA'"
    a_two: "Reverse read sequencing adapter sequence (for read-through).\\nDefault value: 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTAGATCTC'"
    ref: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used.\\nDefault value: ''"
    enable_verbose_debug: "Enable verbose debug output.\\nDefault value: 'false'"
    compression_level: "Output FASTQ compression level from 1 (fastest) to 9 (best compression).\\nDefault value: '1'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out_one = "${in_out_one}"
    File out_out_two = "${in_out_two}"
  }
}