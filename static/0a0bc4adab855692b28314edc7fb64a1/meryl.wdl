version 1.0

task Meryl {
  input {
    Boolean? _compute_parameters
    Boolean? _build_table
    Boolean? _scan_table
    Boolean? __operations
    Boolean? _dump_table
    Boolean? size_mer_required
    Boolean? homopolymer_compression_optional
    Boolean? enable_positions
    String? seqfasta_scanned_determine
    Boolean? compute_params_assuming
    Boolean? only_build_forward
    Boolean? only_build_reverse
    Boolean? use_mers_assumes
    Boolean? dont_save_less
    Boolean? dont_save_more
    String? output_table_prefix
    Boolean? entertain_the_user
    String? threads
    String? memory
    String? segments
    Boolean? config_batch
    String? count_batch
    Boolean? merge_batch
    Boolean? sge
    Boolean? sge_build
    Boolean? sg_emerge
    Boolean? dd
    Boolean? dt
    Boolean? dc
    Boolean? dh
    Int min
    Int min_exist
    Int max
    String add
    String sub
    String abs
    String and
    String nand
    String or
    String xor
  }
  command <<<
    meryl \
      ~{min} \
      ~{min_exist} \
      ~{max} \
      ~{add} \
      ~{sub} \
      ~{abs} \
      ~{and} \
      ~{nand} \
      ~{or} \
      ~{xor} \
      ~{true="-P" false="" _compute_parameters} \
      ~{true="-B" false="" _build_table} \
      ~{true="-S" false="" _scan_table} \
      ~{true="-M" false="" __operations} \
      ~{true="-D" false="" _dump_table} \
      ~{true="-m" false="" size_mer_required} \
      ~{true="-c" false="" homopolymer_compression_optional} \
      ~{true="-p" false="" enable_positions} \
      ~{if defined(seqfasta_scanned_determine) then ("-s " +  '"' + seqfasta_scanned_determine + '"') else ""} \
      ~{true="-n" false="" compute_params_assuming} \
      ~{true="-f" false="" only_build_forward} \
      ~{true="-r" false="" only_build_reverse} \
      ~{true="-C" false="" use_mers_assumes} \
      ~{true="-L" false="" dont_save_less} \
      ~{true="-U" false="" dont_save_more} \
      ~{if defined(output_table_prefix) then ("-o " +  '"' + output_table_prefix + '"') else ""} \
      ~{true="-v" false="" entertain_the_user} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("-memory " +  '"' + memory + '"') else ""} \
      ~{if defined(segments) then ("-segments " +  '"' + segments + '"') else ""} \
      ~{true="-configbatch" false="" config_batch} \
      ~{if defined(count_batch) then ("-countbatch " +  '"' + count_batch + '"') else ""} \
      ~{true="-mergebatch" false="" merge_batch} \
      ~{true="-sge" false="" sge} \
      ~{true="-sgebuild" false="" sge_build} \
      ~{true="-sgemerge" false="" sg_emerge} \
      ~{true="-Dd" false="" dd} \
      ~{true="-Dt" false="" dt} \
      ~{true="-Dc" false="" dc} \
      ~{true="-Dh" false="" dh}
  >>>
  parameter_meta {
    _compute_parameters: "-- compute parameters"
    _build_table: "-- build table"
    _scan_table: "-- scan table"
    __operations: "-- \"math\" operations"
    _dump_table: "-- dump table"
    size_mer_required: "#          (size of a mer; required)"
    homopolymer_compression_optional: "#          (homopolymer compression; optional)"
    enable_positions: "(enable positions)"
    seqfasta_scanned_determine: "(seq.fasta is scanned to determine the number of mers)"
    compute_params_assuming: "#          (compute params assuming file with this many mers in it)"
    only_build_forward: "(only build for the forward strand)"
    only_build_reverse: "(only build for the reverse strand)"
    use_mers_assumes: "(use canonical mers, assumes both strands)"
    dont_save_less: "#          (DON'T save mers that occur less than # times)"
    dont_save_more: "#          (DON'T save mers that occur more than # times)"
    output_table_prefix: "(output table prefix)"
    entertain_the_user: "(entertain the user)"
    threads: "(use n threads to build)"
    memory: "(use at most m MB of memory per segment)"
    segments: "(use n segments)"
    config_batch: "(create the batches)"
    count_batch: "(run batch number n)"
    merge_batch: "(merge the batches)"
    sge: "jobname      unique job name for this execution.  Meryl will submit jobs with name mpjobname, ncjobname, nmjobname, for phases prepare, count and merge."
    sge_build: "\"options\"    any additional options to sge, e.g.,"
    sg_emerge: "\"options\"    \"-p -153 -pe thread 2 -A merylaccount\" N.B. - -N will be ignored N.B. - be sure to quote the options"
    dd: "Dump a histogram of the distance between the same mers."
    dt: "Dump mers >= a threshold.  Use -n to specify the threshold."
    dc: "Count the number of mers, distinct mers and unique mers."
    dh: "Dump (to stdout) a histogram of mer counts."
    min: "count is the minimum count for all databases.  If the mer does NOT exist in all databases, the mer has a zero count, and is NOT in the output."
    min_exist: "count is the minimum count for all databases that contain the mer"
    max: "count is the maximum count for all databases"
    add: "count is sum of the counts for all databases"
    sub: "count is the first minus the second (binary only)"
    abs: "count is the absolute value of the first minus the second (binary only)"
    and: "outputs mer iff it exists in all databases"
    nand: "outputs mer iff it exists in at least one, but not all, databases"
    or: "outputs mer iff it exists in at least one database"
    xor: "outputs mer iff it exists in an odd number of databases"
  }
}