version 1.0

task HailctlDevQuery {
  input {
    String set
    String unset
    String get
  }
  command <<<
    hailctl dev query \
      ~{set} \
      ~{unset} \
      ~{get}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    set: "Set a Hail query resource value."
    unset: "Unset a Hail query resource value (restore to default\\nbehavior)."
    get: "Get the value of a Hail query resource (or all values of a\\nspecific resource type)."
  }
  output {
    File out_stdout = stdout()
  }
}