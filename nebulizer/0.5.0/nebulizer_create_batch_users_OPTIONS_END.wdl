version 1.0

task NebulizerCreateBatchUsersOPTIONSEND {
  input {
    String? galaxyGalaxy
    String? templateTemplate
    String? startStart
    String? endEnd
  }
  command <<<
    nebulizer create_batch_users OPTIONS END \
      ~{galaxyGalaxy} \
      ~{templateTemplate} \
      ~{startStart} \
      ~{endEnd}
  >>>
}