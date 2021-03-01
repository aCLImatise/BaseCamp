version 1.0

task DxdockerRun {
  input {
    Directory? volume
    String? env
    String? entry_point
    Directory? workdir
    Boolean? quiet
    Directory? rootfs
    Boolean? rm
    String? user
    String image
    String command_run_container
  }
  command <<<
    dx_docker run \
      ~{image} \
      ~{command_run_container} \
      ~{if defined(volume) then ("--volume " +  '"' + volume + '"') else ""} \
      ~{if defined(env) then ("--env " +  '"' + env + '"') else ""} \
      ~{if defined(entry_point) then ("--entrypoint " +  '"' + entry_point + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(rootfs) then ("--rootfs " +  '"' + rootfs + '"') else ""} \
      ~{if (rm) then "--rm" else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0"
  }
  parameter_meta {
    volume: "Directory to mount inside the container. Can be\\nsupplied multiple times (e.g. -v /mnt/data:/mnt/data\\n-v /host:/guest"
    env: "Environment variables to set within container. Can be\\nsupplied multiple times (e.g. -e foo=bar -e pizza=pie"
    entry_point: "Overwrite default entry point for image"
    workdir: "Working directory"
    quiet: "Suppress printing of image metadata"
    rootfs: "Use directory pointed to here for rootfs instead of\\nextracting the image (for expert use/development\\npurposes)"
    rm: "Automatically remove the container when it exits"
    user: "User to execute command as: *currently ignored*"
    image: "image name"
    command_run_container: "command to run within container"
  }
  output {
    File out_stdout = stdout()
  }
}