version 1.0

task NebulizerCreateBatchUsersOPTIONSGALAXYSTART {
  input {
    String? templateTemplate
    String? startStart
    String? endEnd
  }
  command <<<
    nebulizer create_batch_users OPTIONS GALAXY START \
      ~{templateTemplate} \
      ~{startStart} \
      ~{endEnd}
  >>>
}