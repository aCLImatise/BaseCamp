version 1.0

task Fastqjoin {
  input {
    String? see__below
    Int? verifies_ids_match
    Int? npercent_maximum_difference
    Int? nminimum_overlap
    Int? verbose_stitch_length
    Boolean? no_reverse_complement
    Boolean? allow_insert_read
    Int read_one_dot_fq
    Int read_two_dot_fq
    String? mate_dot_fq
  }
  command <<<
    fastq_join \
      ~{read_one_dot_fq} \
      ~{read_two_dot_fq} \
      ~{mate_dot_fq} \
      ~{if defined(see__below) then ("-o " +  '"' + see__below + '"') else ""} \
      ~{if defined(verifies_ids_match) then ("-v " +  '"' + verifies_ids_match + '"') else ""} \
      ~{if defined(npercent_maximum_difference) then ("-p " +  '"' + npercent_maximum_difference + '"') else ""} \
      ~{if defined(nminimum_overlap) then ("-m " +  '"' + nminimum_overlap + '"') else ""} \
      ~{if defined(verbose_stitch_length) then ("-r " +  '"' + verbose_stitch_length + '"') else ""} \
      ~{if (no_reverse_complement) then "-R" else ""} \
      ~{if (allow_insert_read) then "-x" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    see__below: "See 'Output' below"
    verifies_ids_match: "Verifies that the 2 files probe id's match up to char C\\nuse ' ' (space) for Illumina reads"
    npercent_maximum_difference: "N-percent maximum difference (8)"
    nminimum_overlap: "N-minimum overlap (6)"
    verbose_stitch_length: "Verbose stitch length report"
    no_reverse_complement: "No reverse complement"
    allow_insert_read: "Allow insert < read length"
    read_one_dot_fq: ""
    read_two_dot_fq: ""
    mate_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}