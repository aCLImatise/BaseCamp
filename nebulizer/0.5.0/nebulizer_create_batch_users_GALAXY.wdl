version 1.0

task NebulizerCreateBatchUsersGALAXY {
  input {
    String? optionsOptions
    String? galaxyGalaxy
    String? templateTemplate
    String? startStart
    String? endEnd
  }
  command <<<
    nebulizer create_batch_users GALAXY \
      ~{optionsOptions} \
      ~{galaxyGalaxy} \
      ~{templateTemplate} \
      ~{startStart} \
      ~{endEnd}
  >>>
}