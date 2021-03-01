version 1.0

task Rapifilt {
  input {
    Boolean? program_version_information
    Boolean? enable_fasta_output
    Boolean? int_set_lefcut
    Boolean? int_rightcut_value
    Boolean? int_windows_size
    Boolean? int_filter_sequence
    Boolean? mx
    Boolean? fast_q
    Boolean? sff
    Boolean? illumina_files_illumina
    File? fastqfile_desired_file
    Boolean? tb
    Boolean? te
    Boolean? bin
  }
  command <<<
    rapifilt \
      ~{if (program_version_information) then "-v" else ""} \
      ~{if (enable_fasta_output) then "-f" else ""} \
      ~{if (int_set_lefcut) then "-l" else ""} \
      ~{if (int_rightcut_value) then "-r" else ""} \
      ~{if (int_windows_size) then "-w" else ""} \
      ~{if (int_filter_sequence) then "-m" else ""} \
      ~{if (mx) then "-mx" else ""} \
      ~{if (fast_q) then "-fastq" else ""} \
      ~{if (sff) then "-sff" else ""} \
      ~{if (illumina_files_illumina) then "-i" else ""} \
      ~{if (fastqfile_desired_file) then "-o" else ""} \
      ~{if (tb) then "-tb" else ""} \
      ~{if (te) then "-te" else ""} \
      ~{if (bin) then "-bin" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    program_version_information: "Program and version information"
    enable_fasta_output: "Enable fasta output (default fastq)"
    int_set_lefcut: "<int>                 Set lef-cut value for quality scores (int default 0)"
    int_rightcut_value: "<int>                 Set right-cut value for quality scores (int default 0)"
    int_windows_size: "<int>                 Set windows size to check on the quality scores (int default 1)"
    int_filter_sequence: "<int>                 Filter sequence shorter than min_len (int default 1)"
    mx: "<int>                Filter sequence larger than max_len (int default 5000)"
    fast_q: "<fastq file>      single fastq input (file.fastq) the file can be gz compressed"
    sff: "<454 files>         454 input (file.sff)"
    illumina_files_illumina: "<illumina files>      Illumina inputs(file1.fastq file2.fastq) the files can be gz compressed"
    fastqfile_desired_file: "<fastq_file>          Desired fastq output file. If not specified to stdout"
    tb: "<int>                Remove n bases from the begins of sequencing fragments (int default 0)"
    te: "<int>                Remove n bases from the ends of sequencing fragments (int default 0)"
    bin: "<int>               Bin size used to compute statistic per base (int default 1)"
  }
  output {
    File out_stdout = stdout()
    File out_fastqfile_desired_file = "${in_fastqfile_desired_file}"
  }
}