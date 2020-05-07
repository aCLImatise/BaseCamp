version 1.0

task NebulizerCreateBatchUsersSTART {
  input {
    String? optionsOptions
    String? galaxyGalaxy
    String? templateTemplate
    String? startStart
    String? endEnd
  }
  command <<<
    nebulizer create_batch_users START \
      ~{optionsOptions} \
      ~{galaxyGalaxy} \
      ~{templateTemplate} \
      ~{startStart} \
      ~{endEnd}
  >>>
}