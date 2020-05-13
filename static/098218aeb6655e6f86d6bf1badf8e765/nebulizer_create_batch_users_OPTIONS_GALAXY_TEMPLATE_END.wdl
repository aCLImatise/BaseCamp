version 1.0

task NebulizerCreateBatchUsersOPTIONSGALAXYTEMPLATEEND {
  input {
    String? startStart
    String? endEnd
  }
  command <<<
    nebulizer create_batch_users OPTIONS GALAXY TEMPLATE END \
      ~{startStart} \
      ~{endEnd}
  >>>
}