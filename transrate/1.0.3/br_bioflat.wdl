version 1.0

task BrBioflat.rb {
  input {
    String primaryPrimary
    String secondarySecondary
    String addAddSecondary
    Boolean sortSort
    String sortSort
    Boolean envEnv
    String envEnvArg
    Boolean renewRenew
    String formatFormat
  }
  command <<<
    br_bioflat.rb \
      ~{if defined(primaryPrimary) then ("--primary " +  '"' + primaryPrimary + '"') else ""} \
      ~{if defined(secondarySecondary) then ("--secondary " +  '"' + secondarySecondary + '"') else ""} \
      ~{if defined(addAddSecondary) then ("--add-secondary " +  '"' + addAddSecondary + '"') else ""} \
      ~{true="--sort" false="" sortSort} \
      ~{if defined(sortSort) then ("--sort " +  '"' + sortSort + '"') else ""} \
      ~{true="--env" false="" envEnv} \
      ~{if defined(envEnvArg) then ("--env-arg " +  '"' + envEnvArg + '"') else ""} \
      ~{true="--renew" false="" renewRenew} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""}
  >>>
}