version 1.0

task SequenceGenerate {
  input {
    Int? min
    Int? max
    String? sequences
    Int? bases
    Boolean? gaussian
    Float? mirror
    Float? at
    Float? sets_frequency_bases
    Float? sets_frequency_c
    Float? sets_frequency_g
    Float? sets_frequency_t
    String sequence
    String? mode
    String? sequence_file
  }
  command <<<
    sequence generate \
      ~{sequence} \
      ~{mode} \
      ~{sequence_file} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(sequences) then ("-sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(bases) then ("-bases " +  '"' + bases + '"') else ""} \
      ~{if (gaussian) then "-gaussian" else ""} \
      ~{if defined(mirror) then ("-mirror " +  '"' + mirror + '"') else ""} \
      ~{if defined(at) then ("-at " +  '"' + at + '"') else ""} \
      ~{if defined(sets_frequency_bases) then ("-a " +  '"' + sets_frequency_bases + '"') else ""} \
      ~{if defined(sets_frequency_c) then ("-c " +  '"' + sets_frequency_c + '"') else ""} \
      ~{if defined(sets_frequency_g) then ("-g " +  '"' + sets_frequency_g + '"') else ""} \
      ~{if defined(sets_frequency_t) then ("-t " +  '"' + sets_frequency_t + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min: "minimum sequence length"
    max: "maximum sequence length"
    sequences: "generate N sequences"
    bases: "generate at least B bases, no more than B+maxLength-1 bases."
    gaussian: "99.73% of the reads (3 standard deviations) will be between min and max"
    mirror: "sets GC/AT composition (default 0.50)"
    at: "sets GC/AT composition (default 0.50)"
    sets_frequency_bases: "sets frequency of A bases (default 0.25)"
    sets_frequency_c: "sets frequency of C bases (default 0.25)"
    sets_frequency_g: "sets frequency of G bases (default 0.25)"
    sets_frequency_t: "sets frequency of T bases (default 0.25)"
    sequence: ""
    mode: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}