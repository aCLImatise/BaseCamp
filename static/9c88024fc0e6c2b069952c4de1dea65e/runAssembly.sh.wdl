version 1.0

task RunAssemblysh {
  input {
    Boolean? ins
    Boolean? in_one
    Boolean? in_two
    Boolean? inp
    File? output_directory_current
    File? output_filename_disco
    Boolean? maximum_memory_used
    Boolean? number_threads_default
    Boolean? obg
    Boolean? osg
    Boolean? assembly_parameter_file_st
    Boolean? p_two
    Boolean? p_three
    String run_disco_dots_h
  }
  command <<<
    runAssembly_sh \
      ~{run_disco_dots_h} \
      ~{if (ins) then "-inS" else ""} \
      ~{if (in_one) then "-in1" else ""} \
      ~{if (in_two) then "-in2" else ""} \
      ~{if (inp) then "-inP" else ""} \
      ~{if (output_directory_current) then "-d" else ""} \
      ~{if (output_filename_disco) then "-o" else ""} \
      ~{if (maximum_memory_used) then "-m" else ""} \
      ~{if (number_threads_default) then "-n" else ""} \
      ~{if (obg) then "-obg" else ""} \
      ~{if (osg) then "-osg" else ""} \
      ~{if (assembly_parameter_file_st) then "-p" else ""} \
      ~{if (p_two) then "-p2" else ""} \
      ~{if (p_three) then "-p3" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ins: "single read filenames (comma separated fasta/fastq/fastq.gz files)."
    in_one: "forward paired read filename (single fasta/fastq/fastq.gz file)."
    in_two: "reverse paired read filename (single fasta/fastq/fastq.gz file)."
    inp: "interleaved paired read filenames (comma separated fasta/fastq/fastq.gz files)."
    output_directory_current: "output directory path.(DEFAULT: current directory)"
    output_filename_disco: "output filename prefix.(DEFAULT: disco)"
    maximum_memory_used: "maximum memory to be used (DEFAULT: 15 GB)."
    number_threads_default: "number of threads (DEFAULT: )."
    obg: "only build overlap graph (DEFAULT: False)."
    osg: "only simplify existing overlap graph (DEFAULT: False)."
    assembly_parameter_file_st: "assembly parameter file for 1st assembly iteration."
    p_two: "assembly parameter file for 2nd assembly iteration."
    p_three: "assembly parameter file for 3rd assembly iteration."
    run_disco_dots_h: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_current = "${in_output_directory_current}"
    File out_output_filename_disco = "${in_output_filename_disco}"
  }
}