version 1.0

task ArcherLaunch {
  input {
    Int? aws_bucket_name
    Int? aws_region
    String? db_path
    String? gr_pc_address
    Int? gr_pc_port
    String? log_file
    String? manifest_url
    Int? num_processors
    Int? num_workers
  }
  command <<<
    archer launch \
      ~{if defined(aws_bucket_name) then ("--awsBucketName " +  '"' + aws_bucket_name + '"') else ""} \
      ~{if defined(aws_region) then ("--awsRegion " +  '"' + aws_region + '"') else ""} \
      ~{if defined(db_path) then ("--dbPath " +  '"' + db_path + '"') else ""} \
      ~{if defined(gr_pc_address) then ("--grpcAddress " +  '"' + gr_pc_address + '"') else ""} \
      ~{if defined(gr_pc_port) then ("--grpcPort " +  '"' + gr_pc_port + '"') else ""} \
      ~{if defined(log_file) then ("--logFile " +  '"' + log_file + '"') else ""} \
      ~{if defined(manifest_url) then ("--manifestURL " +  '"' + manifest_url + '"') else ""} \
      ~{if defined(num_processors) then ("--numProcessors " +  '"' + num_processors + '"') else ""} \
      ~{if defined(num_workers) then ("--numWorkers " +  '"' + num_workers + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/archer:0.1.1--he881be0_0"
  }
  parameter_meta {
    aws_bucket_name: "the AWS S3 bucket name for data upload (default \\\"artic-archer-uploads-test\\\")"
    aws_region: "the AWS region to use (default \\\"eu-west-2\\\")"
    db_path: "location to store the Archer database (default \\\"/root/.archer\\\")"
    gr_pc_address: "address to announce on (default \\\"localhost\\\")"
    gr_pc_port: "TCP port to listen to by the gRPC server (default \\\"9090\\\")"
    log_file: "where to write the server log (if unset, STDERR used)"
    manifest_url: "the ARTIC primer scheme manifest url (default \\\"https://raw.githubusercontent.com/artic-network/primer-schemes/master/schemes_manifest.json\\\")"
    num_processors: "number of processors to use (-1 == all) (default -1)"
    num_workers: "number of concurrent request handlers to use (default 2)"
  }
  output {
    File out_stdout = stdout()
  }
}