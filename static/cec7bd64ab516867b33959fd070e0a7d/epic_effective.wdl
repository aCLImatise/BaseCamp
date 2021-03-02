version 1.0

task Epiceffective {
  input {
    Int? read_length
    Int? nb_cpu
    Directory? tmpdir
    File fasta_genome
  }
  command <<<
    epic_effective \
      ~{fasta_genome} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(nb_cpu) then ("--nb-cpu " +  '"' + nb_cpu + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_length: "length of reads"
    nb_cpu: "number of cores to use [default: 1]"
    tmpdir: "temporary directory. Default is to use $TMPDIR if set, otherwise /tmp."
    fasta_genome: "Fasta genome"
  }
  output {
    File out_stdout = stdout()
  }
}