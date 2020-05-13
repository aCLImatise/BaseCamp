version 1.0

task IgdiscoverErrorplot {
  input {
    String minimumMinimumGroupSize
    String maxMaxJShm
    String multiMulti
    String boxplotBoxplot
  }
  command <<<
    igdiscover errorplot \
      ~{if defined(minimumMinimumGroupSize) then ("--minimum-group-size " +  '"' + minimumMinimumGroupSize + '"') else ""} \
      ~{if defined(maxMaxJShm) then ("--max-j-shm " +  '"' + maxMaxJShm + '"') else ""} \
      ~{if defined(multiMulti) then ("--multi " +  '"' + multiMulti + '"') else ""} \
      ~{if defined(boxplotBoxplot) then ("--boxplot " +  '"' + boxplotBoxplot + '"') else ""}
  >>>
}