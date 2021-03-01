version 1.0

task AsmOutputStatistics {
  input {
    File? read_assembly_here
    String? gatekeeper_store
    String? overlap_store
    String? v_tigstore_version
    File? scaffolder_checkpoint_file
    String? write_output_here
  }
  command <<<
    asmOutputStatistics \
      ~{if defined(read_assembly_here) then ("-a " +  '"' + read_assembly_here + '"') else ""} \
      ~{if defined(gatekeeper_store) then ("-G " +  '"' + gatekeeper_store + '"') else ""} \
      ~{if defined(overlap_store) then ("-O " +  '"' + overlap_store + '"') else ""} \
      ~{if defined(v_tigstore_version) then ("-T " +  '"' + v_tigstore_version + '"') else ""} \
      ~{if defined(scaffolder_checkpoint_file) then ("-C " +  '"' + scaffolder_checkpoint_file + '"') else ""} \
      ~{if defined(write_output_here) then ("-o " +  '"' + write_output_here + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_assembly_here: "read the assembly from here"
    gatekeeper_store: "gatekeeper store"
    overlap_store: "overlap store"
    v_tigstore_version: "v    tigStore and version"
    scaffolder_checkpoint_file: "v     scaffolder checkpoint file name and version"
    write_output_here: "write the output here"
  }
  output {
    File out_stdout = stdout()
  }
}