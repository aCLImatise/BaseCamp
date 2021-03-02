version 1.0

task MaRaClusterAdapter {
  input {
    File? in
    File? id_in
    File? out
    File? consensus_out
    Directory? output_directory
    Int? p_cut
    Int? min_cluster_size
    File? mar_a_cluster_executable
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MaRaClusterAdapter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(id_in) then ("-id_in " +  '"' + id_in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(consensus_out) then ("-consensus_out " +  '"' + consensus_out + '"') else ""} \
      ~{if defined(output_directory) then ("-output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(p_cut) then ("-pcut " +  '"' + p_cut + '"') else ""} \
      ~{if defined(min_cluster_size) then ("-min_cluster_size " +  '"' + min_cluster_size + '"') else ""} \
      ~{if defined(mar_a_cluster_executable) then ("-maracluster_executable " +  '"' + mar_a_cluster_executable + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*                           Input file(s) (valid formats: 'mzML', 'mgf')"
    id_in: "Optional idXML Input file(s) in the same order as mzML files - for Maracluster Cluster annotation (valid formats: 'idXML')"
    out: "Output file in idXML format (valid formats: 'idXML')"
    consensus_out: "Consensus spectra in mzML format (valid formats: 'mzML')"
    output_directory: "Output directory for MaRaCluster original consensus output"
    p_cut: "Log(p-value) cutoff, has to be < 0.0. Default: -10.0. (default: '-10.0' max: '0.0')"
    min_cluster_size: "Minimum number of spectra in a cluster for consensus spectra (default: '1' min: '1')"
    mar_a_cluster_executable: "*  The maracluster executable. Provide a full or relative path, or make sure it can be found in your PATH environment."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    Directory out_output_directory = "${in_output_directory}"
  }
}