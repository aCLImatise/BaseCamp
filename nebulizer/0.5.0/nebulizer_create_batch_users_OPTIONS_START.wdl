version 1.0

task NebulizerCreateBatchUsersOPTIONSSTART {
  input {
    String? galaxyGalaxy
    String? templateTemplate
    String? startStart
    String? endEnd
  }
  command <<<
    nebulizer create_batch_users OPTIONS START \
      ~{galaxyGalaxy} \
      ~{templateTemplate} \
      ~{startStart} \
      ~{endEnd}
  >>>
}