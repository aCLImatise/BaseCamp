version 1.0

task NebulizerCreateBatchUsersOPTIONSGALAXYEND {
  input {
    String? templateTemplate
    String? startStart
    String? endEnd
  }
  command <<<
    nebulizer create_batch_users OPTIONS GALAXY END \
      ~{templateTemplate} \
      ~{startStart} \
      ~{endEnd}
  >>>
}