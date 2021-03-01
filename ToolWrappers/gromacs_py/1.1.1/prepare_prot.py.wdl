version 1.0

task PrepareProtpy {
  input {
    File? input_pdb_file
    Directory? output_directory
    File? output_file_name
    Boolean? no_v_site
    Float? ion_concentration_mm
    Int? m_steps
    Float? ha_time
    Int? ca_time
    Float? dt_ha
    Float? dt
    Int? max_warn
    Int? nt
    Int? nt_mpi
    String? gpu_id
    String ns
  }
  command <<<
    prepare_prot_py \
      ~{ns} \
      ~{if defined(input_pdb_file) then ("-f " +  '"' + input_pdb_file + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(output_file_name) then ("-n " +  '"' + output_file_name + '"') else ""} \
      ~{if (no_v_site) then "-no_vsite" else ""} \
      ~{if defined(ion_concentration_mm) then ("-C " +  '"' + ion_concentration_mm + '"') else ""} \
      ~{if defined(m_steps) then ("-m_steps " +  '"' + m_steps + '"') else ""} \
      ~{if defined(ha_time) then ("-HA_time " +  '"' + ha_time + '"') else ""} \
      ~{if defined(ca_time) then ("-CA_time " +  '"' + ca_time + '"') else ""} \
      ~{if defined(dt_ha) then ("-dt_HA " +  '"' + dt_ha + '"') else ""} \
      ~{if defined(dt) then ("-dt " +  '"' + dt + '"') else ""} \
      ~{if defined(max_warn) then ("-maxwarn " +  '"' + max_warn + '"') else ""} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(nt_mpi) then ("-ntmpi " +  '"' + nt_mpi + '"') else ""} \
      ~{if defined(gpu_id) then ("-gpu_id " +  '"' + gpu_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_pdb_file: "Input PDB file"
    output_directory: "Output Directory"
    output_file_name: "Output file name"
    no_v_site: "Use virtual site for hydrogens"
    ion_concentration_mm: "Ion concentration (mM), default = 0.15 (150mM)"
    m_steps: "Minimisation nsteps, default=10000"
    ha_time: "Equilibration with HA constraint time(ns), default =\\n2.5 ns"
    ca_time: "Equilibration with HA constraint time(ns), default = 5"
    dt_ha: "Equi HA dt, default=0.002 (2 fs)"
    dt: "Equi CA, CA_LOW, dt, default=0.005 (5 fs)"
    max_warn: "Total number of warnings allowed for the\\nequilibration, default=0"
    nt: "Total number of threads to start, default=0"
    nt_mpi: "Number of thread-MPI threads to start, default=0"
    gpu_id: "List of GPU device id-s to use, default=\\\"\\\""
    ns: "-CA_LOW_time CA_LOW_TIME"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_output_file_name = "${in_output_file_name}"
  }
}