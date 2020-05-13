version 1.0

task NebulizerListUsersOPTIONS {
  input {
    String nameName
    Boolean longLong
  }
  command <<<
    nebulizer list_users OPTIONS \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--long" false="" longLong}
  >>>
}