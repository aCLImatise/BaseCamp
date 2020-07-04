version 1.0

task PancakeCreate {
  input {
    Array[String] sequences
    Array[String] ids
    String? email
    String? pan_file
    Boolean? ali
    Int? min_len
    Boolean? no_self_alignments
  }
  command <<<
    pancake create \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(pan_file) then ("--pan_file " +  '"' + pan_file + '"') else ""} \
      ~{true="--ali" false="" ali} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{true="--no_self_alignments" false="" no_self_alignments}
  >>>
  parameter_meta {
    sequences: "fasta or multiple fasta file providing input chromosome sequences"
    ids: "gi ids of sequences to download from NCBI"
    email: "if downloading your sequences via gi ids, please specify your email address; in case of excessive usage, NCBI will attempt to contact a user at the e-mail address provided prior to blocking access to the E-utilities"
    pan_file: "File name of new PanCake Object (DEFAULT=pan_files/pancake.pan)"
    ali: "[ALI [ALI ...]], -a [ALI [ALI ...]] pairwise alignments (BLAST or nucmer output) to include in PanCake Object"
    min_len: "minimum length of pairwise alignments to include (DEFUALT=25)"
    no_self_alignments: "if set, skip pairwise alignments between regions on identical chromosomes as input (DEFAULT=False)"
  }
}