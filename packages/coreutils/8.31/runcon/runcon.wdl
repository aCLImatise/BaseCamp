version 1.0

task Runcon {
  input {
    Boolean? compute
    String? type
    String? user
    String? role
    String? range
    String context
  }
  command <<<
    runcon \
      ~{context} \
      ~{if (compute) then "--compute" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(role) then ("--role " +  '"' + role + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""}
  >>>
  parameter_meta {
    compute: "compute process transition context before modifying"
    type: "type (for same role as parent)"
    user: "user identity"
    role: "role"
    range: "levelrange"
    context: "Complete security context"
  }
  output {
    File out_stdout = stdout()
  }
}