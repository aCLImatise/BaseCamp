version 1.0

task Chromatiblock {
  input {
    Array[Int] f
    String? l
    Directory? d
    Int gpl_v_three
    String or
  }
  command <<<
    chromatiblock \
      ~{gpl_v_three} \
      ~{or} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    l: ""
    d: ""
    gpl_v_three: "USAGE: chromatiblock -f genome1.fasta genome2.fasta .... genomeN.fasta -o image.svg "
    or: "chromatiblock -d /path/to/fasta_directory/ -o image.svg"
  }
  output {
    File out_stdout = stdout()
  }
}