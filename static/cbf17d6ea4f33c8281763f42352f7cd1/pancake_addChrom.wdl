version 1.0

task PancakeAddChrom {
  input {
    File? pan_file
    Array[String] sequences
    Array[String] ids
    String? email
    File? output_file_new
    Boolean? ali
    Int? min_len
    Boolean? no_self_alignments
  }
  command <<<
    pancake addChrom \
      ~{if defined(pan_file) then ("--panfile " +  '"' + pan_file + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(output_file_new) then ("--output " +  '"' + output_file_new + '"') else ""} \
      ~{if (ali) then "--ali" else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if (no_self_alignments) then "--no_self_alignments" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_file: "Name of PanCake Data Object File (required)"
    sequences: "fasta or multiple fasta file providing input\\nchromosome sequences"
    ids: "gi ids of sequences to download from NCBI"
    email: "if downloading your sequences via gi ids, please\\nspecify your email address; in case of excessive\\nusage, NCBI will attempt to contact a user at the\\ne-mail address provided prior to blocking access to\\nthe E-utilities"
    output_file_new: "output file for new PanCake Object (DEFAULT=PAN_FILE);\\nif specified, PanCake Data Object in PAN_FILE stays\\nunchanged"
    ali: "[ALI [ALI ...]], -a [ALI [ALI ...]]\\npairwise alignments (BLAST or nucmer output) to\\ninclude in PanCake Object"
    min_len: "minimum length of pairwise alignments to include\\n(DEFUALT=25)"
    no_self_alignments: "if set, skip pairwise alignments between regions on\\nidentical chromosomes as input (DEFAULT=False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_new = "${in_output_file_new}"
  }
}