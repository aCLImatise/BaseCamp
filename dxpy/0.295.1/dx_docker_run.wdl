version 1.0

task DxDockerRun {
  input {
    String? volume
    String? env
    String? entry_point
    String? workdir
    Boolean? quiet
    String? rootfs
    Boolean? rm
    String? user
    String image
    String command_run_container
  }
  command <<<
    dx-docker run \
      ~{image} \
      ~{command_run_container} \
      ~{if defined(volume) then ("--volume " +  '"' + volume + '"') else ""} \
      ~{if defined(env) then ("--env " +  '"' + env + '"') else ""} \
      ~{if defined(entry_point) then ("--entrypoint " +  '"' + entry_point + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(rootfs) then ("--rootfs " +  '"' + rootfs + '"') else ""} \
      ~{true="--rm" false="" rm} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""}
  >>>
  parameter_meta {
    volume: "Directory to mount inside the container. Can be supplied multiple times (e.g. -v /mnt/data:/mnt/data -v /host:/guest"
    env: "Environment variables to set within container. Can be supplied multiple times (e.g. -e foo=bar -e pizza=pie"
    entry_point: "Overwrite default entry point for image"
    workdir: "Working directory"
    quiet: "Suppress printing of image metadata"
    rootfs: "Use directory pointed to here for rootfs instead of extracting the image (for expert use/development purposes)"
    rm: "Automatically remove the container when it exits"
    user: "User to execute command as: *currently ignored*"
    image: "image name"
    command_run_container: "command to run within container"
  }
}