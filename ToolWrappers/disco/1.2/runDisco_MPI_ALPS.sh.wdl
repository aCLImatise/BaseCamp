version 1.0

task RunDiscoMPIALPSsh {
  input {
    Boolean? ins
    Boolean? in_one
    Boolean? in_two
    Boolean? inp
    File? output_directory_path
    File? output_filename_prefix
    Boolean? maximum_memory_used
    Boolean? np
    Boolean? number_threads_default
    Boolean? obg
    Boolean? osg
    Boolean? rma
    Boolean? assembly_parameter_file_st
    Boolean? p_two
    Boolean? p_three
    String for
    String clusters
    String using
    String application
    String level
    String placement
    String scheduler
  }
  command <<<
    runDisco_MPI_ALPS_sh \
      ~{for} \
      ~{clusters} \
      ~{using} \
      ~{application} \
      ~{level} \
      ~{placement} \
      ~{scheduler} \
      ~{if (ins) then "-inS" else ""} \
      ~{if (in_one) then "-in1" else ""} \
      ~{if (in_two) then "-in2" else ""} \
      ~{if (inp) then "-inP" else ""} \
      ~{if (output_directory_path) then "-d" else ""} \
      ~{if (output_filename_prefix) then "-o" else ""} \
      ~{if (maximum_memory_used) then "-m" else ""} \
      ~{if (np) then "-np" else ""} \
      ~{if (number_threads_default) then "-n" else ""} \
      ~{if (obg) then "-obg" else ""} \
      ~{if (osg) then "-osg" else ""} \
      ~{if (rma) then "-rma" else ""} \
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
    output_directory_path: "output directory path."
    output_filename_prefix: "output filename prefix."
    maximum_memory_used: "maximum memory to be used (DEFAULT: 15 GB)."
    np: "number of MPI processes (DEFAULT: )."
    number_threads_default: "number of threads (DEFAULT: )."
    obg: "only build overlap graph (DEFAULT: False)."
    osg: "only simplify existing overlap graph (DEFAULT: False)."
    rma: "enable distributed memory with remote memory acess (DEFAULT: False)."
    assembly_parameter_file_st: "assembly parameter file for 1st assembly iteration."
    p_two: "assembly parameter file for 2nd assembly iteration."
    p_three: "assembly parameter file for 3rd assembly iteration."
    for: ""
    clusters: ""
    using: ""
    application: ""
    level: ""
    placement: ""
    scheduler: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_path = "${in_output_directory_path}"
    File out_output_filename_prefix = "${in_output_filename_prefix}"
  }
}