version 1.0

task Fermi2Match {
  input {
    Boolean? find_smems_req
    Boolean? discovery_novel_alleles
    Int? kmer_length_d
    Int? number_of_threads
    Int? batch_size
    File? sampled_suffix_array
    Int? show_coordinate_is
    String sq
    String em
    String ns
  }
  command <<<
    fermi2 match \
      ~{sq} \
      ~{em} \
      ~{ns} \
      ~{if (find_smems_req) then "-p" else ""} \
      ~{if (discovery_novel_alleles) then "-d" else ""} \
      ~{if defined(kmer_length_d) then ("-k " +  '"' + kmer_length_d + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(batch_size) then ("-b " +  '"' + batch_size + '"') else ""} \
      ~{if defined(sampled_suffix_array) then ("-s " +  '"' + sampled_suffix_array + '"') else ""} \
      ~{if defined(show_coordinate_is) then ("-m " +  '"' + show_coordinate_is + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    find_smems_req: "find SMEMs (req. both strands in one index)"
    discovery_novel_alleles: "discovery novel alleles (force -p)"
    kmer_length_d: "k-mer length in the discovery mode (force -d) [61]"
    number_of_threads: "number of threads [1]"
    batch_size: "batch size [10000000]"
    sampled_suffix_array: "sampled suffix array [null]"
    show_coordinate_is: "show coordinate if the number of hits is no more than INT [10]"
    sq: "seqName  seqLen"
    em: "start  end  occurrence [positions]"
    ns: "start  leftLen  diffLen  rightLen  leftOcc  rightOcc  strand  seq  qual"
  }
  output {
    File out_stdout = stdout()
  }
}