version 1.0

task NebulizerCreateBatchUsersEND {
  input {
    String? optionsOptions
    String? galaxyGalaxy
    String? templateTemplate
    String? startStart
    String? endEnd
  }
  command <<<
    nebulizer create_batch_users END \
      ~{optionsOptions} \
      ~{galaxyGalaxy} \
      ~{templateTemplate} \
      ~{startStart} \
      ~{endEnd}
  >>>
}