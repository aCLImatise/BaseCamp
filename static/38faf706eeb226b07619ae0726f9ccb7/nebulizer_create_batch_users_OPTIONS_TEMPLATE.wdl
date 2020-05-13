version 1.0

task NebulizerCreateBatchUsersOPTIONSTEMPLATE {
  input {
    String? galaxyGalaxy
    String? templateTemplate
    String? startStart
    String? endEnd
  }
  command <<<
    nebulizer create_batch_users OPTIONS TEMPLATE \
      ~{galaxyGalaxy} \
      ~{templateTemplate} \
      ~{startStart} \
      ~{endEnd}
  >>>
}