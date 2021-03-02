version 1.0

task Fpcat {
  input {
    File? in
    Boolean? merge
    File? save_fingerprints_filename
    File? out
    Boolean? reorder
    Boolean? preserve_order
    Boolean? show_progress
    File filename
  }
  command <<<
    fpcat \
      ~{filename} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if defined(save_fingerprints_filename) then ("--output " +  '"' + save_fingerprints_filename + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (reorder) then "--reorder" else ""} \
      ~{if (preserve_order) then "--preserve-order" else ""} \
      ~{if (show_progress) then "--show-progress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chemfp:1.6.1--py27h3dcb392_0"
  }
  parameter_meta {
    in: "input fingerprint format. One of fps or fps.gz.\\n(default guesses from filename or is fps)"
    merge: "assume the input fingerprint files are in popcount\\norder and do a merge sort"
    save_fingerprints_filename: "save the fingerprints to FILENAME (default=stdout)"
    out: "output fingerprint format. One of fps or fps.gz.\\n(default guesses from output filename, or is 'fps')"
    reorder: "reorder the output fingerprints by popcount"
    preserve_order: "save the output fingerprints in the same order as the\\ninput (default for FPS output)"
    show_progress: "show progress"
    filename: "input fingerprint filenames (default: use stdin)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}