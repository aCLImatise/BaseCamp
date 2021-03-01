version 1.0

task HailctlDevDeploy {
  input {
    String? branch
    Array[String] steps
    Boolean? open
  }
  command <<<
    hailctl dev deploy \
      ~{if defined(branch) then ("--branch " +  '"' + branch + '"') else ""} \
      ~{if defined(steps) then ("--steps " +  '"' + steps + '"') else ""} \
      ~{if (open) then "--open" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    branch: "Fully-qualified branch, e.g., hail-is/hail:feature."
    steps: "Comma or space-separated list of steps to run."
    open: "Open the deploy batch page in a web browser."
  }
  output {
    File out_stdout = stdout()
  }
}