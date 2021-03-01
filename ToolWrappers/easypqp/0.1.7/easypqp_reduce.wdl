version 1.0

task EasypqpReduce {
  input {
    File? in
    File? out
    Int? bins
    Int? peptides
  }
  command <<<
    easypqp reduce \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(peptides) then ("--peptides " +  '"' + peptides + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input PQP file.  [required]"
    out: "Output PQP file.  [required]"
    bins: "Number of bins to fill along gradient.  [default: 10]"
    peptides: "Number of peptides to sample.  [default: 5]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}