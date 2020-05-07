version 1.0

task IgdiscoverCommonv {
  input {
    String minimumMinimumFrequency
  }
  command <<<
    igdiscover commonv \
      ~{if defined(minimumMinimumFrequency) then ("--minimum-frequency " +  '"' + minimumMinimumFrequency + '"') else ""}
  >>>
}