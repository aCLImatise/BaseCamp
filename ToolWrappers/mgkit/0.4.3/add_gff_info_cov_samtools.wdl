version 1.0

task AddgffinfoCovSamtools {
  input {
    Boolean? verbose
    File? samples
    File? depths
    Int? num_seqs
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info cov_samtools \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(depths) then ("--depths " +  '"' + depths + '"') else ""} \
      ~{if defined(num_seqs) then ("--num-seqs " +  '"' + num_seqs + '"') else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "if one or more samples are provided, the average\\ncoverage is calculated"
    samples: "Sample name, will add a `sample_cov` in the GFF\\nfile. If not passed, the attribute will be `cov`"
    depths: "`samtools depth -aa` file  [required]"
    num_seqs: "Number of sequences to update the log. If 0, no\\nmessage is logged  [default: 0]"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}