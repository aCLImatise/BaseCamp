version 1.0

task RunAssemblyMPI.sh {
  input {
    Boolean? ins
    Boolean? in_one
    Boolean? in_two
    Boolean? inp
    Boolean? output_directory_path
    Boolean? output_filename_prefix
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
    String pbs
    String with
    String open_mpi
  }
  command <<<
    runAssembly-MPI.sh \
      ~{for} \
      ~{clusters} \
      ~{using} \
      ~{pbs} \
      ~{with} \
      ~{open_mpi} \
      ~{true="-inS" false="" ins} \
      ~{true="-in1" false="" in_one} \
      ~{true="-in2" false="" in_two} \
      ~{true="-inP" false="" inp} \
      ~{true="-d" false="" output_directory_path} \
      ~{true="-o" false="" output_filename_prefix} \
      ~{true="-m" false="" maximum_memory_used} \
      ~{true="-np" false="" np} \
      ~{true="-n" false="" number_threads_default} \
      ~{true="-obg" false="" obg} \
      ~{true="-osg" false="" osg} \
      ~{true="-rma" false="" rma} \
      ~{true="-p" false="" assembly_parameter_file_st} \
      ~{true="-p2" false="" p_two} \
      ~{true="-p3" false="" p_three}
  >>>
  parameter_meta {
    ins: "single read filenames (comma separated fasta/fastq/fastq.gz files)."
    in_one: "forward paired read filename (single fasta/fastq/fastq.gz file)."
    in_two: "reverse paired read filename (single fasta/fastq/fastq.gz file)."
    inp: "interleaved paired read filenames (comma separated fasta/fastq/fastq.gz files)."
    output_directory_path: "output directory path."
    output_filename_prefix: "output filename prefix."
    maximum_memory_used: "maximum memory to be used (DEFAULT: 15 GB)."
    np: "number of MPI processes (DEFAULT: )."
    number_threads_default: "number of threads (DEFAULT: 8)."
    obg: "only build overlap graph (DEFAULT: False)."
    osg: "only simplify existing overlap graph (DEFAULT: False)."
    rma: "enable distributed memory with remote memory acess (DEFAULT: False)."
    assembly_parameter_file_st: "assembly parameter file for 1st assembly iteration."
    p_two: "assembly parameter file for 2nd assembly iteration."
    p_three: "assembly parameter file for 3rd assembly iteration."
    for: ""
    clusters: ""
    using: ""
    pbs: ""
    with: ""
    open_mpi: ""
  }
}