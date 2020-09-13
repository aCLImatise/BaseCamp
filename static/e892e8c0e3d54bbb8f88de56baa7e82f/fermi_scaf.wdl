version 1.0

task FermiScaf {
  input {
    Int? number_of_threads
    Int? minimum_number_supporting
    Boolean? print_links_unitigs
    String in_dot_fmd
    String in_dot_remapped_dot_mag
    String avg
    String std
  }
  command <<<
    fermi scaf \
      ~{in_dot_fmd} \
      ~{in_dot_remapped_dot_mag} \
      ~{avg} \
      ~{std} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(minimum_number_supporting) then ("-m " +  '"' + minimum_number_supporting + '"') else ""} \
      ~{if (print_links_unitigs) then "-P" else ""}
  >>>
  parameter_meta {
    number_of_threads: "number of threads [1]"
    minimum_number_supporting: "minimum number of supporting reads [5]"
    print_links_unitigs: "print the links between unitigs"
    in_dot_fmd: ""
    in_dot_remapped_dot_mag: ""
    avg: ""
    std: ""
  }
  output {
    File out_stdout = stdout()
  }
}