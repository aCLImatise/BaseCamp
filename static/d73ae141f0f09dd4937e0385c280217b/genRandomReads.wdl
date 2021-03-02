version 1.0

task GenRandomReads {
  input {
    String? expression_levels
    Boolean? summarize_fast_a
    File? transcript_fast_a
    Boolean? total_reads
    Int? read_len
    Int? rand_seed
    File? quality_ref_file
    Boolean? floor_strategy
    Boolean? generate_pairedend_reads
    Float? insertion_len_sigma
    Boolean? simple_transcript_id
    Boolean? truth_in_read_names
    Boolean? no_actual_reads
    String var_13
    String do
    String encode
    String var_16
    String var_17
    String how
    String only
    String parameters
    String seed
    String var_22
    String truncate
    String two
    String best
    String var_26
    Int var_int
    String less
    String margin
    String strings
    String wanted
    String m
    String no
    String tpm
    String total
    String column
    String generating
    String have
    Int length
    String not
    String var_output
    String var_42
    String prefix
    String scanning
    String simulating
    String textual
    String than
    String to
    String var_49
    String actually
    String database
    String deal
    File var_file
    String var_54
    String of
    String read
    String sequencing
    String table
    String var_59
    String var_true
    String value
    String values_dot
    String columns
    String fast_a
    String containing
    String delimited
    String errors
    String errors_dot
    String in
    String locations
    String random
    String reads
    String transcript
    String transcripts
    String truncated
    String with
    String phred
    String are
    String by
    String names
    String normal
    String numbers_dot
    String round_up
    String tab
    String unix_time
    String and
    String distribution
    String first
    String reads_dot
    String same
    String simulated
    Int one_zero_zero
    String fast_q_do_tgz
    String is
    String when
    String var_as
    String used
  }
  command <<<
    genRandomReads \
      ~{var_13} \
      ~{do} \
      ~{encode} \
      ~{var_16} \
      ~{var_17} \
      ~{how} \
      ~{only} \
      ~{parameters} \
      ~{seed} \
      ~{var_22} \
      ~{truncate} \
      ~{two} \
      ~{best} \
      ~{var_26} \
      ~{var_int} \
      ~{less} \
      ~{margin} \
      ~{strings} \
      ~{wanted} \
      ~{m} \
      ~{no} \
      ~{tpm} \
      ~{total} \
      ~{column} \
      ~{generating} \
      ~{have} \
      ~{length} \
      ~{not} \
      ~{var_output} \
      ~{var_42} \
      ~{prefix} \
      ~{scanning} \
      ~{simulating} \
      ~{textual} \
      ~{than} \
      ~{to} \
      ~{var_49} \
      ~{actually} \
      ~{database} \
      ~{deal} \
      ~{var_file} \
      ~{var_54} \
      ~{of} \
      ~{read} \
      ~{sequencing} \
      ~{table} \
      ~{var_59} \
      ~{var_true} \
      ~{value} \
      ~{values_dot} \
      ~{columns} \
      ~{fast_a} \
      ~{containing} \
      ~{delimited} \
      ~{errors} \
      ~{errors_dot} \
      ~{in} \
      ~{locations} \
      ~{random} \
      ~{reads} \
      ~{transcript} \
      ~{transcripts} \
      ~{truncated} \
      ~{with} \
      ~{phred} \
      ~{are} \
      ~{by} \
      ~{names} \
      ~{normal} \
      ~{numbers_dot} \
      ~{round_up} \
      ~{tab} \
      ~{unix_time} \
      ~{and} \
      ~{distribution} \
      ~{first} \
      ~{reads_dot} \
      ~{same} \
      ~{simulated} \
      ~{one_zero_zero} \
      ~{fast_q_do_tgz} \
      ~{is} \
      ~{when} \
      ~{var_as} \
      ~{used} \
      ~{if defined(expression_levels) then ("--expressionLevels " +  '"' + expression_levels + '"') else ""} \
      ~{if (summarize_fast_a) then "--summarizeFasta" else ""} \
      ~{if defined(transcript_fast_a) then ("--transcriptFasta " +  '"' + transcript_fast_a + '"') else ""} \
      ~{if (total_reads) then "--totalReads" else ""} \
      ~{if defined(read_len) then ("--readLen " +  '"' + read_len + '"') else ""} \
      ~{if defined(rand_seed) then ("--randSeed " +  '"' + rand_seed + '"') else ""} \
      ~{if defined(quality_ref_file) then ("--qualityRefFile " +  '"' + quality_ref_file + '"') else ""} \
      ~{if (floor_strategy) then "--floorStrategy" else ""} \
      ~{if (generate_pairedend_reads) then "--pairedEnd" else ""} \
      ~{if defined(insertion_len_sigma) then ("--insertionLenSigma " +  '"' + insertion_len_sigma + '"') else ""} \
      ~{if (simple_transcript_id) then "--simpleTranscriptId" else ""} \
      ~{if (truth_in_read_names) then "--truthInReadNames" else ""} \
      ~{if (no_actual_reads) then "--noActualReads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    expression_levels: "[other options]"
    summarize_fast_a: "Only output the transcript names and lengths."
    transcript_fast_a: "The transcript database in FASTA/gz format."
    total_reads: "<int>        Total read/pairs in output."
    read_len: "The length of the output reads. 100 by default."
    rand_seed: "Seed to generate random numbers. UNIXTIME is used\\nas the random seed by default."
    quality_ref_file: "A textual file containing Phred+33 quanlity strings\\nfor simulating sequencing errors. The quality\\nstrings have to have the same length as the output\\nreads. No sequencing errors are simulated when this\\noption is omitted."
    floor_strategy: "How to deal with round-up errors. 'FLOOR': generate\\nless than wanted reads; 'RANDOM': randomly assign\\nmargin reads to transcripts; 'ITERATIVE': find the\\nbest M value to have ~N reads."
    generate_pairedend_reads: "Generate paired-end reads."
    insertion_len_sigma: "Parameters of a truncated normal distribution for\\ndeciding insertion lengths of paired-end reads.\\nDefault values: mean=160, sigma=30, min=110, max=400"
    simple_transcript_id: "Truncate transcript names to the first '|' or space."
    truth_in_read_names: "Encode the true locations of reads in read names."
    no_actual_reads: "Do not actually generate reads in fastq.gz files."
    var_13: ""
    do: ""
    encode: ""
    var_16: ""
    var_17: ""
    how: ""
    only: ""
    parameters: ""
    seed: ""
    var_22: ""
    truncate: ""
    two: ""
    best: ""
    var_26: ""
    var_int: ""
    less: ""
    margin: ""
    strings: ""
    wanted: ""
    m: ""
    no: ""
    tpm: ""
    total: ""
    column: ""
    generating: ""
    have: ""
    length: ""
    not: ""
    var_output: ""
    var_42: ""
    prefix: ""
    scanning: ""
    simulating: ""
    textual: ""
    than: ""
    to: ""
    var_49: ""
    actually: ""
    database: ""
    deal: ""
    var_file: ""
    var_54: ""
    of: ""
    read: ""
    sequencing: ""
    table: ""
    var_59: ""
    var_true: ""
    value: ""
    values_dot: ""
    columns: ""
    fast_a: ""
    containing: ""
    delimited: ""
    errors: ""
    errors_dot: ""
    in: ""
    locations: ""
    random: ""
    reads: ""
    transcript: ""
    transcripts: ""
    truncated: ""
    with: ""
    phred: ""
    are: ""
    by: ""
    names: ""
    normal: ""
    numbers_dot: ""
    round_up: ""
    tab: ""
    unix_time: ""
    and: ""
    distribution: ""
    first: ""
    reads_dot: ""
    same: ""
    simulated: ""
    one_zero_zero: ""
    fast_q_do_tgz: ""
    is: ""
    when: ""
    var_as: ""
    used: ""
  }
  output {
    File out_stdout = stdout()
  }
}