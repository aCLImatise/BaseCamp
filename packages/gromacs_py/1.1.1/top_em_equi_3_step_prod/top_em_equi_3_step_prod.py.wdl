version 1.0

task TopEmEqui3StepProdpy {
  input {
    File? input_pdb_file
    Directory? output_directory
    Boolean? v_site
    Float? ion_concentration_mm
    Int? m_steps
    String? ha_time
    Float? dt_ha
    Float? dt
    Int? nt
    Int? nt_mpi
    String? gpu_id
    Float zero_dot_two_five_ns
    Int one_ns
    Int five_ns
  }
  command <<<
    top_em_equi_3_step_prod_py \
      ~{zero_dot_two_five_ns} \
      ~{one_ns} \
      ~{five_ns} \
      ~{if defined(input_pdb_file) then ("-f " +  '"' + input_pdb_file + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if (v_site) then "-vsite" else ""} \
      ~{if defined(ion_concentration_mm) then ("-C " +  '"' + ion_concentration_mm + '"') else ""} \
      ~{if defined(m_steps) then ("-m_steps " +  '"' + m_steps + '"') else ""} \
      ~{if defined(ha_time) then ("-HA_time " +  '"' + ha_time + '"') else ""} \
      ~{if defined(dt_ha) then ("-dt_HA " +  '"' + dt_ha + '"') else ""} \
      ~{if defined(dt) then ("-dt " +  '"' + dt + '"') else ""} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(nt_mpi) then ("-ntmpi " +  '"' + nt_mpi + '"') else ""} \
      ~{if defined(gpu_id) then ("-gpu_id " +  '"' + gpu_id + '"') else ""}
  >>>
  parameter_meta {
    input_pdb_file: "Input PDB file"
    output_directory: "Output Directory"
    v_site: "Use virtual site for hydrogens"
    ion_concentration_mm: "Ion concentration (mM), default = 0.15 (150mM)"
    m_steps: "Minimisation nsteps, default=1000"
    ha_time: "Equilibration with HA constraint time(ns), default ="
    dt_ha: "Equi HA dt, default=0.005 (5 fs)"
    dt: "Equi CA, CA_LOW, dt, default=0.005 (5 fs)"
    nt: "Total number of threads to start, default=0"
    nt_mpi: "Number of thread-MPI threads to start, default=0"
    gpu_id: "List of GPU device id-s to use, default=\\\"\\\""
    zero_dot_two_five_ns: "-CA_time CA_TIME      Equilibration with HA constraint time(ns), default ="
    one_ns: "-CA_LOW_time CA_LOW_TIME"
    five_ns: "-prod_time PROD_TIME  Production time, default=10"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}