version 1.0

task Fragment4dnpairs.pl {
  input {
    Boolean? allow_replacement
    String in_file
    String outfile
    String? site
    File? file
  }
  command <<<
    fragment_4dnpairs.pl \
      ~{in_file} \
      ~{outfile} \
      ~{site} \
      ~{file} \
      ~{true="--allow-replacement" false="" allow_replacement}
  >>>
  parameter_meta {
    allow_replacement: ": allows replacing existing frag1/frag2 columns. Default: abort if the columns already exist."
    in_file: ""
    outfile: ""
    site: ""
    file: ""
  }
}