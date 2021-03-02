version 1.0

task SpadesbwaSampe {
  input {
    Int? maximum_insert_size
    Int? maximum_occurrences_one
    Int? maximum_hits_output_paired
    Int? maximum_hits_output_discordant
    Float? prior_chimeric_rate
    File? sam_file_output
    String? read_group_line
    Boolean? preload_index_memory
    Boolean? disable_smithwaterman_unmapped
    Boolean? disable_insert_size
    String bwa
    String sampe
    String prefix
    Int in_one_do_tsai
    Int in_two_do_tsai
    Int in_one_dot_fq
    Int in_two_dot_fq
  }
  command <<<
    spades_bwa sampe \
      ~{bwa} \
      ~{sampe} \
      ~{prefix} \
      ~{in_one_do_tsai} \
      ~{in_two_do_tsai} \
      ~{in_one_dot_fq} \
      ~{in_two_dot_fq} \
      ~{if defined(maximum_insert_size) then ("-a " +  '"' + maximum_insert_size + '"') else ""} \
      ~{if defined(maximum_occurrences_one) then ("-o " +  '"' + maximum_occurrences_one + '"') else ""} \
      ~{if defined(maximum_hits_output_paired) then ("-n " +  '"' + maximum_hits_output_paired + '"') else ""} \
      ~{if defined(maximum_hits_output_discordant) then ("-N " +  '"' + maximum_hits_output_discordant + '"') else ""} \
      ~{if defined(prior_chimeric_rate) then ("-c " +  '"' + prior_chimeric_rate + '"') else ""} \
      ~{if defined(sam_file_output) then ("-f " +  '"' + sam_file_output + '"') else ""} \
      ~{if defined(read_group_line) then ("-r " +  '"' + read_group_line + '"') else ""} \
      ~{if (preload_index_memory) then "-P" else ""} \
      ~{if (disable_smithwaterman_unmapped) then "-s" else ""} \
      ~{if (disable_insert_size) then "-A" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    maximum_insert_size: "maximum insert size [500]"
    maximum_occurrences_one: "maximum occurrences for one end [100000]"
    maximum_hits_output_paired: "maximum hits to output for paired reads [3]"
    maximum_hits_output_discordant: "maximum hits to output for discordant pairs [10]"
    prior_chimeric_rate: "prior of chimeric rate (lower bound) [1.0e-05]"
    sam_file_output: "sam file to output results to [stdout]"
    read_group_line: "read group header line such as `@RG\\tID:foo\\tSM:bar' [null]"
    preload_index_memory: "preload index into memory (for base-space reads only)"
    disable_smithwaterman_unmapped: "disable Smith-Waterman for the unmapped mate"
    disable_insert_size: "disable insert size estimate (force -s)"
    bwa: ""
    sampe: ""
    prefix: ""
    in_one_do_tsai: ""
    in_two_do_tsai: ""
    in_one_dot_fq: ""
    in_two_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
    File out_sam_file_output = "${in_sam_file_output}"
  }
}