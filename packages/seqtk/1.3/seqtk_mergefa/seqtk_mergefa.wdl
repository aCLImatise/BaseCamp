version 1.0

task SeqtkMergefa {
  input {
    Int? quality_threshold
    Boolean? take_intersection
    Boolean? convert_lowercase_is
    Boolean? pick_random_allele
    Int in_one_dot_fa
    Int in_two_dot_fa
  }
  command <<<
    seqtk mergefa \
      ~{in_one_dot_fa} \
      ~{in_two_dot_fa} \
      ~{if defined(quality_threshold) then ("-q " +  '"' + quality_threshold + '"') else ""} \
      ~{if (take_intersection) then "-i" else ""} \
      ~{if (convert_lowercase_is) then "-m" else ""} \
      ~{if (pick_random_allele) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quality_threshold: "quality threshold [0]"
    take_intersection: "take intersection"
    convert_lowercase_is: "convert to lowercase when one of the input base is N"
    pick_random_allele: "pick a random allele from het"
    in_one_dot_fa: ""
    in_two_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}