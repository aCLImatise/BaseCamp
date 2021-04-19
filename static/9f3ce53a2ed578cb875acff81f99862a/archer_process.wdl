version 1.0

task ArcherProcess {
  input {
    String? gr_pc_address
    Int? gr_pc_port
  }
  command <<<
    archer process \
      ~{if defined(gr_pc_address) then ("--grpcAddress " +  '"' + gr_pc_address + '"') else ""} \
      ~{if defined(gr_pc_port) then ("--grpcPort " +  '"' + gr_pc_port + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/archer:0.1.1--he881be0_0"
  }
  parameter_meta {
    gr_pc_address: "address of the server hosting the Archer service (default \\\"localhost\\\")"
    gr_pc_port: "TCP port to listen to by the gRPC server (default \\\"9090\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}