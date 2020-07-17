version 1.0

task PrepareProtTopoEdit.py {
  input {
    String? input_pdb_file
    String? input_topology_file
    String? output_directory
    String? output_file_name
    Boolean? no_v_site
    String? concentration_mm_default
    Int? m_steps
    String? ha_time
    String? ca_time
    String? ca_low_time
    Int? max_warn
    String? dt_ha
    String? dt
    String? nt
    String? nt_mpi
    String? gpu_id
  }
  command <<<
    prepare_prot_topo_edit.py \
      ~{if defined(input_pdb_file) then ("-f " +  '"' + input_pdb_file + '"') else ""} \
      ~{if defined(input_topology_file) then ("-p " +  '"' + input_topology_file + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(output_file_name) then ("-n " +  '"' + output_file_name + '"') else ""} \
      ~{true="-no_vsite" false="" no_v_site} \
      ~{if defined(concentration_mm_default) then ("-C " +  '"' + concentration_mm_default + '"') else ""} \
      ~{if defined(m_steps) then ("-m_steps " +  '"' + m_steps + '"') else ""} \
      ~{if defined(ha_time) then ("-HA_time " +  '"' + ha_time + '"') else ""} \
      ~{if defined(ca_time) then ("-CA_time " +  '"' + ca_time + '"') else ""} \
      ~{if defined(ca_low_time) then ("-CA_LOW_time " +  '"' + ca_low_time + '"') else ""} \
      ~{if defined(max_warn) then ("-maxwarn " +  '"' + max_warn + '"') else ""} \
      ~{if defined(dt_ha) then ("-dt_HA " +  '"' + dt_ha + '"') else ""} \
      ~{if defined(dt) then ("-dt " +  '"' + dt + '"') else ""} \
      ~{if defined(nt) then ("-nt " +  '"' + nt + '"') else ""} \
      ~{if defined(nt_mpi) then ("-ntmpi " +  '"' + nt_mpi + '"') else ""} \
      ~{if defined(gpu_id) then ("-gpu_id " +  '"' + gpu_id + '"') else ""}
  >>>
  parameter_meta {
    input_pdb_file: "Input PDB file"
    input_topology_file: "Input topology file"
    output_directory: "Output Directory"
    output_file_name: "Output file name"
    no_v_site: "Use virtual site for hydrogens"
    concentration_mm_default: "Ion concentration (mM), default = 0.15 (150mM)"
    m_steps: "Minimisation nsteps, default=10000"
    ha_time: "Equilibration with HA constraint time(ns), default = 2.5 ns"
    ca_time: "Equilibration with HA constraint time(ns), default = 5 ns"
    ca_low_time: "Equilibration with HA constraint time(ns), default = 10 ns"
    max_warn: "Total number of warnings allowed for the equilibration, default=0"
    dt_ha: "Equi HA dt, default=0.002 (2 fs)"
    dt: "Equi CA, CA_LOW, dt, default=0.005 (5 fs)"
    nt: "Total number of threads to start, default=0"
    nt_mpi: "Number of thread-MPI threads to start, default=0"
    gpu_id: "List of GPU device id-s to use, default=\"\""
  }
}