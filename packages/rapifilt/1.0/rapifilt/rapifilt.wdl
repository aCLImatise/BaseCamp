version 1.0

task Rapifilt {
  input {
    Boolean? program_version_information
    Boolean? enable_fasta_output
    Boolean? int_set_value
    Boolean? int_set_rightcut
    Boolean? int_set_windows
    Boolean? int_filter_sequence_shorter
    Boolean? mx
    Boolean? fast_q
    Boolean? sff
    Boolean? illumina_files_inputsfilefastq
    File? desired_fastq_output
    Boolean? tb
    Boolean? te
    Boolean? bin
  }
  command <<<
    rapifilt \
      ~{if (program_version_information) then "-v" else ""} \
      ~{if (enable_fasta_output) then "-f" else ""} \
      ~{if (int_set_value) then "-l" else ""} \
      ~{if (int_set_rightcut) then "-r" else ""} \
      ~{if (int_set_windows) then "-w" else ""} \
      ~{if (int_filter_sequence_shorter) then "-m" else ""} \
      ~{if (mx) then "-mx" else ""} \
      ~{if (fast_q) then "-fastq" else ""} \
      ~{if (sff) then "-sff" else ""} \
      ~{if (illumina_files_inputsfilefastq) then "-i" else ""} \
      ~{if (desired_fastq_output) then "-o" else ""} \
      ~{if (tb) then "-tb" else ""} \
      ~{if (te) then "-te" else ""} \
      ~{if (bin) then "-bin" else ""}
  >>>
  parameter_meta {
    program_version_information: "Program and version information"
    enable_fasta_output: "Enable fasta output (default fastq)"
    int_set_value: "<int>                 Set lef-cut value for quality scores (int default 0)"
    int_set_rightcut: "<int>                 Set right-cut value for quality scores (int default 0)"
    int_set_windows: "<int>                 Set windows size to check on the quality scores (int default 1)"
    int_filter_sequence_shorter: "<int>                 Filter sequence shorter than min_len (int default 1)"
    mx: "<int>                Filter sequence larger than max_len (int default 5000)"
    fast_q: "<fastq file>      single fastq input (file.fastq) the file can be gz compressed"
    sff: "<454 files>         454 input (file.sff)"
    illumina_files_inputsfilefastq: "<illumina files>      Illumina inputs(file1.fastq file2.fastq) the files can be gz compressed"
    desired_fastq_output: "<fastq_file>          Desired fastq output file. If not specified to stdout"
    tb: "<int>                Remove n bases from the begins of sequencing fragments (int default 0)"
    te: "<int>                Remove n bases from the ends of sequencing fragments (int default 0)"
    bin: "<int>               Bin size used to compute statistic per base (int default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_desired_fastq_output = "${in_desired_fastq_output}"
  }
}