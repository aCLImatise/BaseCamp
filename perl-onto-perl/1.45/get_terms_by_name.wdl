version 1.0

task GetTermsByName.pl {
  input {
    Boolean fF
    Boolean tT
  }
  command <<<
    get_terms_by_name.pl \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT}
  >>>
}