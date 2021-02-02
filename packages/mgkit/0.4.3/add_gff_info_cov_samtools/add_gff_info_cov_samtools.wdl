version 1.0

task AddgffinfoCovSamtools {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info cov_samtools \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-m, --average           if one or more samples are provided, the average\\ncoverage is calculated\\n-s, --samples TEXT      Sample name, will add a `sample_cov` in the GFF\\nfile. If not passed, the attribute will be `cov`\\n-d, --depths TEXT       `samtools depth -aa` file  [required]\\n-n, --num-seqs INTEGER  Number of sequences to update the log. If 0, no\\nmessage is logged  [default: 0]\\n--progress              Shows Progress Bar\\n--help                  Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}