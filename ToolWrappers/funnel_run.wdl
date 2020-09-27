version 1.0

task FunnelRun {
  input {
    Boolean? server
    Boolean? container
    Boolean? sh
    Boolean? exec
    Boolean? print
    Boolean? scatter_multiple_tasks
    Boolean? wait
    Boolean? wait_for
    Boolean? in
    Boolean? in_dir
    File? out
    File? out_dir
    Boolean? content
    Boolean? stdin
    Boolean? stdout
    Boolean? stderr
    Boolean? cpu
    Boolean? ram
    Boolean? disk
    Boolean? zone
    String? preemptible
    Boolean? name
    Boolean? description
    Boolean? tag
    Boolean? env
    Boolean? workdir
    Boolean? vol
  }
  command <<<
    funnel run \
      ~{if (server) then "--server" else ""} \
      ~{if (container) then "--container" else ""} \
      ~{if (sh) then "--sh" else ""} \
      ~{if (exec) then "--exec" else ""} \
      ~{if (print) then "--print" else ""} \
      ~{if (scatter_multiple_tasks) then "--scatter" else ""} \
      ~{if (wait) then "--wait" else ""} \
      ~{if (wait_for) then "--wait-for" else ""} \
      ~{if (in) then "--in" else ""} \
      ~{if (in_dir) then "--in-dir" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (content) then "--content" else ""} \
      ~{if (stdin) then "--stdin" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (stderr) then "--stderr" else ""} \
      ~{if (cpu) then "--cpu" else ""} \
      ~{if (ram) then "--ram" else ""} \
      ~{if (disk) then "--disk" else ""} \
      ~{if (zone) then "--zone" else ""} \
      ~{if defined(preemptible) then ("--preemptible " +  '"' + preemptible + '"') else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (description) then "--description" else ""} \
      ~{if (tag) then "--tag" else ""} \
      ~{if (env) then "--env" else ""} \
      ~{if (workdir) then "--workdir" else ""} \
      ~{if (vol) then "--vol" else ""}
  >>>
  parameter_meta {
    server: "Address of Funnel server. Default: http://localhost:8000"
    container: "Containter the command runs in. Default: alpine"
    sh: "Command to be run. This command will be run with the shell: 'sh -c \\\"<sh>\\\"'.\\nThis is the default execution mode for commands passed as args."
    exec: "Command to be run. This command will not be evaulated by 'sh'."
    print: "Print the task without running it."
    scatter_multiple_tasks: "Scatter multiple tasks, one per row of the given file."
    wait: "Wait for the task to finish before exiting."
    wait_for: "Wait for the given task IDs before running the task."
    in: "Input file e.g. varname=/path/to/input.txt"
    in_dir: "Input directory e.g. varname=/path/to/dir"
    out: "Output file e.g. varname=/path/to/output.txt"
    out_dir: "Output directory e.g. varname=/path/to/dir"
    content: "Include input file content from a file e.g. varname=/path/to/in.txt"
    stdin: "File to write to stdin to the command."
    stdout: "File to write to stdout of the command."
    stderr: "File to write to stderr of the command."
    cpu: "Number of CPUs to request."
    ram: "Amount of RAM to request, in GB."
    disk: "Amount of disk space to request, in GB."
    zone: "Require task be scheduled in certain zones."
    preemptible: "task to be scheduled on preemptible workers."
    name: "Task name."
    description: "Task description."
    tag: "Arbitrary key-value tags, e.g. tagname=tagvalue"
    env: "Environment variables, e.g. envvar=foo"
    workdir: "Containter working directory."
    vol: "Define a volume on the container."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_dir = "${in_out_dir}"
  }
}