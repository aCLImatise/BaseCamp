version 1.0

task MerylLookup {
  input {
    String? sequence
    Boolean? output_
    Boolean? mers
    Boolean? labels
    Boolean? min
    Boolean? max
    String? threads
    String? memory
    Boolean? include
    String var_9
    String seq_id
    String seq_pos
    String exists
    String fwd_mer
    String fwd_val
    String rev_mer
    String rev_val
    String var_17
  }
  command <<<
    meryl-lookup \
      ~{var_9} \
      ~{seq_id} \
      ~{seq_pos} \
      ~{exists} \
      ~{fwd_mer} \
      ~{fwd_val} \
      ~{rev_mer} \
      ~{rev_val} \
      ~{var_17} \
      ~{if defined(sequence) then ("-sequence " +  '"' + sequence + '"') else ""} \
      ~{true="-output" false="" output_} \
      ~{true="-mers" false="" mers} \
      ~{true="-labels" false="" labels} \
      ~{true="-min" false="" min} \
      ~{true="-max" false="" max} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("-memory " +  '"' + memory + '"') else ""} \
      ~{true="-include" false="" include}
  >>>
  parameter_meta {
    sequence: "[<input2.fasta>] \"
    output_: "<output1>      [<output2>]"
    mers: "<input1.meryl> [<input2.meryl>] [...] \"
    labels: "<input1name>   [<input2name>]   [...]"
    min: "m    Ignore kmers with value below m"
    max: "m    Ignore kmers with value above m"
    threads: "Number of threads to use when constructing lookup table."
    memory: "Don't use more than m GB memory"
    include: "/ -exclude"
    var_9: "- name of the sequence this kmer is from"
    seq_id: "- numeric version of the seqName (0-based)"
    seq_pos: "- start position (0-based) of the kmer in the sequence"
    exists: "- 'T' if the kmer exists in the database, 'F' if it does not"
    fwd_mer: "- forward mer sequence"
    fwd_val: "- value of the forward mer in the database"
    rev_mer: "- reverse mer sequence"
    rev_val: "- value of the reverse mer in the database"
    var_17: "- name of the sequence this kmer is from"
  }
}