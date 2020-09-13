version 1.0

task Ssueslsfetch {
  input {
    File? output_sequences_file
    File? output_sequence_file
    String? rename_sequence_s
    Boolean? reverse_complement_seqs
    String? retrieve_subsequence_coords
    Boolean? namefile_f_contains
    File? in_format
    Boolean? tab_file
    Boolean? short_name
    String? tm_in
    Int? emax
    File? index
    File? f
  }
  command <<<
    ssu_esl_sfetch \
      ~{if defined(output_sequences_file) then ("-o " +  '"' + output_sequences_file + '"') else ""} \
      ~{if (output_sequence_file) then "-O" else ""} \
      ~{if defined(rename_sequence_s) then ("-n " +  '"' + rename_sequence_s + '"') else ""} \
      ~{if (reverse_complement_seqs) then "-r" else ""} \
      ~{if defined(retrieve_subsequence_coords) then ("-c " +  '"' + retrieve_subsequence_coords + '"') else ""} \
      ~{if (namefile_f_contains) then "-C" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (tab_file) then "--tabfile" else ""} \
      ~{if (short_name) then "--shortname" else ""} \
      ~{if defined(tm_in) then ("--Tmin " +  '"' + tm_in + '"') else ""} \
      ~{if defined(emax) then ("--Emax " +  '"' + emax + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    output_sequences_file: ": output sequences to file <f> instead of stdout"
    output_sequence_file: ": output sequence to file named <key>"
    rename_sequence_s: ": rename the sequence <s>"
    reverse_complement_seqs: ": reverse complement the seq(s)"
    retrieve_subsequence_coords: ": retrieve subsequence coords <from>..<to>"
    namefile_f_contains: ": <namefile> in <f> contains subseq coords too"
    in_format: ": specify that input file is in format <s>"
    tab_file: ": <namefile> in <f> is Infernal cmsearch tab file"
    short_name: ": w/--tabfile, do not add bit score, E value, GC to name"
    tm_in: ": w/--tabfile, only fetch sequences with bit scores above <x>"
    emax: ": w/--tabfile, only fetch sequences with E-values below <x>  (x>0.)"
    index: ""
    f: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_sequences_file = "${in_output_sequences_file}"
    File out_output_sequence_file = "${in_output_sequence_file}"
  }
}