version 1.0

task Lav2plt.pl {
  input {
    String? help
    Boolean? have_bit_scores
    Boolean? simulated_database_size
    String? dev
    String? x_a_slash_ya
  }
  command <<<
    lav2plt.pl \
      ~{if defined(help) then ("--help " +  '"' + help + '"') else ""} \
      ~{true="-B" false="" have_bit_scores} \
      ~{true="-Z" false="" simulated_database_size} \
      ~{if defined(dev) then ("--dev " +  '"' + dev + '"') else ""} \
      ~{if defined(x_a_slash_ya) then ("--xA/--yA " +  '"' + x_a_slash_ya + '"') else ""}
  >>>
  parameter_meta {
    help: "description"
    have_bit_scores: "have bit scores"
    simulated_database_size: "=#   simulated database size"
    dev: "|ps graphical output format"
    x_a_slash_ya: "annotation script"
  }
}