version 1.0

task MinimizePdbpy {
  input {
    File? input_pdb_file
    String? topologie_gromacs_format
    Directory? output_directory
    File? output_file_name
    Int? m_steps
    String? box
    Int? nt
    Int? nt_mpi
    String? gpu_id
  }
  command <<<
    minimize_pdb_py \
      ~{if defined(input_pdb_file) then ("-f " +  '"' + input_pdb_file + '"') else ""} \
      ~{if defined(topologie_gromacs_format) then ("-p " +  '"' + topologie_gromacs_format + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(output_file_name) then ("-n " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(m_steps) then ("-m_steps " +  '"' + m_steps + '"') else ""} \
      ~{if defined(box) then ("-box " +  '"' + box + '"') else ""} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(nt_mpi) then ("-ntmpi " +  '"' + nt_mpi + '"') else ""} \
      ~{if defined(gpu_id) then ("-gpu_id " +  '"' + gpu_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_pdb_file: "Input PDB file"
    topologie_gromacs_format: "Topologie in gromacs format .top"
    output_directory: "Output Directory"
    output_file_name: "Output file name"
    m_steps: "Minimisation nsteps, default=1000"
    box: "Create a box, default=False"
    nt: "Total number of threads to start, default=0"
    nt_mpi: "Number of thread-MPI threads to start, default=0"
    gpu_id: "List of GPU device id-s to use, default=\\\"\\\""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_output_file_name = "${in_output_file_name}"
  }
}