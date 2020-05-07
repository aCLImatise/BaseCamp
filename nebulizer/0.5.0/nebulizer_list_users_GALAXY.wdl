version 1.0

task NebulizerListUsersGALAXY {
  input {
    String nameName
    Boolean longLong
  }
  command <<<
    nebulizer list_users GALAXY \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--long" false="" longLong}
  >>>
}