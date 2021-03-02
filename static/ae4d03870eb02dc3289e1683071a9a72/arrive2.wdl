version 1.0

task Arrive2 {
  input {
    Int? ignore_overlap_degrees
    Int? read_length_info
    String? ignore_reads_shorter
    String? use_windows_m
    Boolean? fit_minimizing_sum
    Boolean? fit_minimizing_error
    Boolean? ignore_reads_all
    String lo
    String hi
    String del
  }
  command <<<
    arrive2 \
      ~{lo} \
      ~{hi} \
      ~{del} \
      ~{if defined(ignore_overlap_degrees) then ("-d " +  '"' + ignore_overlap_degrees + '"') else ""} \
      ~{if defined(read_length_info) then ("-L " +  '"' + read_length_info + '"') else ""} \
      ~{if defined(ignore_reads_shorter) then ("-m " +  '"' + ignore_reads_shorter + '"') else ""} \
      ~{if defined(use_windows_m) then ("-r " +  '"' + use_windows_m + '"') else ""} \
      ~{if (fit_minimizing_sum) then "-s" else ""} \
      ~{if (fit_minimizing_error) then "-x" else ""} \
      ~{if (ignore_reads_all) then "-z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ignore_overlap_degrees: "Ignore 3' overlap degrees > <n>"
    read_length_info: "Get read length info from file <fn>"
    ignore_reads_shorter: "Ignore reads shorter than <n> bp"
    use_windows_m: "-<n>  Use windows in the range <m> .. <n>  of reads"
    fit_minimizing_sum: "Fit by minimizing sum of squared errors instead of |error|"
    fit_minimizing_error: "Fit by minimizing max |error| instead of sum of |error|"
    ignore_reads_all: "Ignore reads with no overlaps at all"
    lo: ""
    hi: ""
    del: ""
  }
  output {
    File out_stdout = stdout()
  }
}