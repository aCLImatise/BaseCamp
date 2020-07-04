version 1.0

task EpicEffective {
  input {
    String? read_length
    String? nb_cpu
    String? tmpdir
    File file
  }
  command <<<
    epic-effective \
      ~{file} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(nb_cpu) then ("--nb-cpu " +  '"' + nb_cpu + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  parameter_meta {
    read_length: "length of reads"
    nb_cpu: "number of cores to use [default: 1]"
    tmpdir: "temporary directory. Default is to use $TMPDIR if set, otherwise /tmp."
    file: "Fasta genome"
  }
}