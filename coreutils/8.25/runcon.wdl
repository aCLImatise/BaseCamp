version 1.0

task Runcon {
  input {
    Boolean computeCompute
    String typeType
    String userUser
    String roleRole
    String rangeRange
    String? contextContext
  }
  command <<<
    runcon \
      ~{contextContext} \
      ~{true="--compute" false="" computeCompute} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(roleRole) then ("--role " +  '"' + roleRole + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""}
  >>>
}