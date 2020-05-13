version 1.0

task IgdiscoverMultidiscover {
  input {
    String minimumMinimumFrequency
    String minimumMinimumDbDiff
  }
  command <<<
    igdiscover multidiscover \
      ~{if defined(minimumMinimumFrequency) then ("--minimum-frequency " +  '"' + minimumMinimumFrequency + '"') else ""} \
      ~{if defined(minimumMinimumDbDiff) then ("--minimum-db-diff " +  '"' + minimumMinimumDbDiff + '"') else ""}
  >>>
}