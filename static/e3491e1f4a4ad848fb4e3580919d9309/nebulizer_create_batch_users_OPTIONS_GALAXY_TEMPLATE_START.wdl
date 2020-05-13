version 1.0

task NebulizerCreateBatchUsersOPTIONSGALAXYTEMPLATESTART {
  input {
    String passwordPassword
    Boolean checkCheck
  }
  command <<<
    nebulizer create_batch_users OPTIONS GALAXY TEMPLATE START \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{true="--check" false="" checkCheck}
  >>>
}