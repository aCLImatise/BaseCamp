version 1.0

task Pxbdsim {
  input {
    Int? extant
    String? time
    Int? birth
    Int? death
    Int? n_reps
    File? out_f
    Boolean? show_extinct
    Int? seed
    Boolean? citation
  }
  command <<<
    pxbdsim \
      ~{if defined(extant) then ("--extant " +  '"' + extant + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(birth) then ("--birth " +  '"' + birth + '"') else ""} \
      ~{if defined(death) then ("--death " +  '"' + death + '"') else ""} \
      ~{if defined(n_reps) then ("--nreps " +  '"' + n_reps + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (show_extinct) then "--showextinct" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    extant: "number of extant species, alt to time"
    time: "timespan of simulation (age of root), alt to extant"
    birth: "birth rate, default=1"
    death: "death rate, default=0"
    n_reps: "number of replicates, default=1"
    out_f: "output file, STOUT otherwise"
    show_extinct: "show lineages that went extinct, default=false"
    seed: "random number seed, clock otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}