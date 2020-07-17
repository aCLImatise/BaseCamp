version 1.0

task Twopaco {
  input {
    File? o
    Boolean? test
    Directory? tmpdir
    Boolean? t
    Int? r
    Int? q
    Int? f
    Boolean? k
    String two_paco
  }
  command <<<
    twopaco \
      ~{two_paco} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="--test" false="" test} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{true="-t" false="" t} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{true="-k" false="" k}
  >>>
  parameter_meta {
    o: ""
    test: ""
    tmpdir: ""
    t: ""
    r: ""
    q: ""
    f: ""
    k: ""
    two_paco: "[-o <file name>] [--test] [--tmpdir <directory name>] [-t <integer>] [-r <integer>] [-q <integer>] -f <integer> [-k <oddc>] [--] [--version] [-h] <fasta files with genomes> ..."
  }
}