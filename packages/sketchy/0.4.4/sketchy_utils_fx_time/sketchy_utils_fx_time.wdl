version 1.0

task SketchyUtilsFxtime {
  input {
    File? fast_q
    File? index
    File? evaluation
    String? prefix
    Int? delta
  }
  command <<<
    sketchy utils fx_time \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(evaluation) then ("--evaluation " +  '"' + evaluation + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""}
  >>>
  parameter_meta {
    fast_q: "Path to Fast{a,q} input file used in evaluation NOTE:\\nThis argument is mutually exclusive with  arguments:\\n[index].  [required]"
    index: "Path to input file read index from `sketchy utils fx-\\nsort` NOTE: This argument is mutually exclusive with\\narguments: [fastx]."
    evaluation: "Path to evaluation file containing predictions\\n(data.tsv)"
    prefix: "Output prefix for time data: {prefix}.time.tsv\\n[skecthy]"
    delta: "Compute time delta between 'first' read or start time\\nof run !! GMT !! in format: '20/11/20 16:20:00'\\n[first]"
  }
  output {
    File out_stdout = stdout()
  }
}