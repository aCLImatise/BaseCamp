version 1.0

task Circulespy {
  input {
    File? fast_a
    Int? km_er
    Int? km_er_step
    String? prefix
    Boolean? intint__intintcoordinates
    Int? extract_by_length
    Float? length_tolerance_percent
    Int? length_tolerance_absolute
    Int? new_start_roll
  }
  command <<<
    circules_py \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(km_er_step) then ("--kmer_step " +  '"' + km_er_step + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (intint__intintcoordinates) then "-c" else ""} \
      ~{if defined(extract_by_length) then ("--extract_by_length " +  '"' + extract_by_length + '"') else ""} \
      ~{if defined(length_tolerance_percent) then ("--length_tolerance_percent " +  '"' + length_tolerance_percent + '"') else ""} \
      ~{if defined(length_tolerance_absolute) then ("--length_tolerance_absolute " +  '"' + length_tolerance_absolute + '"') else ""} \
      ~{if defined(new_start_roll) then ("--newstart_roll " +  '"' + new_start_roll + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mitobim:1.9.1--0"
  }
  parameter_meta {
    fast_a: "fasta file containing the sequence to be evaluate."
    km_er: "kmer size. single number (default = 31) or range (e.g.\\n31-35)."
    km_er_step: "kmer step size (default = 2)."
    prefix: "prefix for output files (default = 'circular')."
    intint__intintcoordinates: "<INT,INT>, --extract_by_coordinates <INT,INT>\\nCoordinates for clipping of sequence in format\\n'startpos,endpos'. Clipped sequence will be written to\\nfile 'prefix.circular.fasta'."
    extract_by_length: "expected length (in bp) of circular molecule. If a\\ncandidate of length expected (+-length tolerance if\\nspecified) is found, sequence will be clipped and\\nwritten to file 'prefix.circular.fasta'."
    length_tolerance_percent: "percent length tolerance (e.g. 0.1, for 10 %).\\nCandidate fragments must have a length of 'expected\\nlength +/- t * expected length'. Default = 0."
    length_tolerance_absolute: "absolute length tolerance (e.g. 1000). Candidate\\nfragments must have a length of 'expected length +/-\\ntolerance'. Default = 0."
    new_start_roll: "'roll' a putative ciruclar sequence to a specified new\\nstart point. Sequence will be written to file\\n'prefix.roll.{n}.fasta'."
  }
  output {
    File out_stdout = stdout()
  }
}