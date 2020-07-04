version 1.0

task HailctlDevDeploy {
  input {
    String? branch
    String? steps
    Boolean? open
  }
  command <<<
    hailctl dev deploy \
      ~{if defined(branch) then ("--branch " +  '"' + branch + '"') else ""} \
      ~{if defined(steps) then ("--steps " +  '"' + steps + '"') else ""} \
      ~{true="--open" false="" open}
  >>>
  parameter_meta {
    branch: "Fully-qualified branch, e.g., hail-is/hail:feature."
    steps: "Comma-separated list of steps to run."
    open: "Open the deploy batch page in a web browser."
  }
}