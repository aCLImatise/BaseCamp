version 1.0

task NebulizerCreateBatchUsersTEMPLATE {
  input {
    String? optionsOptions
    String? galaxyGalaxy
    String? templateTemplate
    String? startStart
    String? endEnd
  }
  command <<<
    nebulizer create_batch_users TEMPLATE \
      ~{optionsOptions} \
      ~{galaxyGalaxy} \
      ~{templateTemplate} \
      ~{startStart} \
      ~{endEnd}
  >>>
}