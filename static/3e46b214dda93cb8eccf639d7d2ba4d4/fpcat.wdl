version 1.0

task Fpcat {
  input {
    String? in
    Boolean? merge
    File? save_fingerprints_filename
    String? out
    Boolean? reorder
    Boolean? preserve_order
    Boolean? show_progress
    File filename
  }
  command <<<
    fpcat \
      ~{filename} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{true="--merge" false="" merge} \
      ~{if defined(save_fingerprints_filename) then ("--output " +  '"' + save_fingerprints_filename + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--reorder" false="" reorder} \
      ~{true="--preserve-order" false="" preserve_order} \
      ~{true="--show-progress" false="" show_progress}
  >>>
  parameter_meta {
    in: "input fingerprint format. One of fps or fps.gz. (default guesses from filename or is fps)"
    merge: "assume the input fingerprint files are in popcount order and do a merge sort"
    save_fingerprints_filename: "save the fingerprints to FILENAME (default=stdout)"
    out: "output fingerprint format. One of fps or fps.gz. (default guesses from output filename, or is 'fps')"
    reorder: "reorder the output fingerprints by popcount"
    preserve_order: "save the output fingerprints in the same order as the input (default for FPS output)"
    show_progress: "show progress"
    filename: "input fingerprint filenames (default: use stdin)"
  }
}