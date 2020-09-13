version 1.0

task PancakeCreate {
  input {
    Array[String] sequences
    Array[String] ids
    String? email
    File? pan_file
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
      ~{if (ali) then "--ali" else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if (no_self_alignments) then "--no_self_alignments" else ""}
  >>>
  parameter_meta {
    sequences: "fasta or multiple fasta file providing input\\nchromosome sequences"
    ids: "gi ids of sequences to download from NCBI"
    email: "if downloading your sequences via gi ids, please\\nspecify your email address; in case of excessive\\nusage, NCBI will attempt to contact a user at the\\ne-mail address provided prior to blocking access to\\nthe E-utilities"
    pan_file: "File name of new PanCake Object\\n(DEFAULT=pan_files/pancake.pan)"
    ali: "[ALI [ALI ...]], -a [ALI [ALI ...]]\\npairwise alignments (BLAST or nucmer output) to\\ninclude in PanCake Object"
    min_len: "minimum length of pairwise alignments to include\\n(DEFUALT=25)"
    no_self_alignments: "if set, skip pairwise alignments between regions on\\nidentical chromosomes as input (DEFAULT=False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}