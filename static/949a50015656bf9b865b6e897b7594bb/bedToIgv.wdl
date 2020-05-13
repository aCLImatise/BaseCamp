version 1.0

task BedToIgv {
  input {
    Boolean pathPath
    Boolean sessSess
    Boolean sortSort
    Boolean clpsClps
    Boolean nameName
    Boolean slopSlop
    Boolean imgImg
  }
  command <<<
    bedToIgv \
      ~{true="-path" false="" pathPath} \
      ~{true="-sess" false="" sessSess} \
      ~{true="-sort" false="" sortSort} \
      ~{true="-clps" false="" clpsClps} \
      ~{true="-name" false="" nameName} \
      ~{true="-slop" false="" slopSlop} \
      ~{true="-img" false="" imgImg}
  >>>
}