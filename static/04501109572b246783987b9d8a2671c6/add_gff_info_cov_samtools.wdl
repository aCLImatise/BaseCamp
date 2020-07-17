version 1.0

task AddGffInfoCovSamtools {
  input {
    Boolean? average
    String? samples
    String? depths
    Int? num_seqs
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    add-gff-info cov_samtools \
      ~{input_file} \
      ~{output_file} \
      ~{true="--average" false="" average} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(depths) then ("--depths " +  '"' + depths + '"') else ""} \
      ~{if defined(num_seqs) then ("--num-seqs " +  '"' + num_seqs + '"') else ""} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    average: "if one or more samples are provided, the average coverage is calculated"
    samples: "Sample name, will add a `sample_cov` in the GFF file. If not passed, the attribute will be `cov`"
    depths: "`samtools depth -aa` file  [required]"
    num_seqs: "Number of sequences to update the log. If 0, no message is logged  [default: 0]"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
}