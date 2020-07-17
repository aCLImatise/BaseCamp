version 1.0

task SketchyUtilsFxTime {
  input {
    File? fast_q
    File? index
    File? evaluation
    String? prefix
    String? delta
  }
  command <<<
    sketchy utils fx-time \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(evaluation) then ("--evaluation " +  '"' + evaluation + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""}
  >>>
  parameter_meta {
    fast_q: "Path to Fast{a,q} input file used in evaluation NOTE: This argument is mutually exclusive with  arguments: [index].  [required]"
    index: "Path to input file read index from `sketchy utils fx- sort` NOTE: This argument is mutually exclusive with arguments: [fastx]."
    evaluation: "Path to evaluation file containing predictions (data.tsv)"
    prefix: "Output prefix for time data: {prefix}.time.tsv [skecthy]"
    delta: "Compute time delta between 'first' read or start time of run !! GMT !! in format: '20/11/20 16:20:00' [first]"
  }
}