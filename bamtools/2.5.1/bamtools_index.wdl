version 1.0

task BamtoolsIndex {
  input {
    String? in
    Boolean? bti
  }
  command <<<
    bamtools index \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{true="-bti" false="" bti}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    bti: "create (non-standard) BamTools index file (*.bti). Default behavior is to create standard BAM index (*.bai)"
  }
}