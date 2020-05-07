version 1.0

task MerfishtoolsGenMhd4OPTIONS {
  input {
    Int oneOneBits
  }
  command <<<
    merfishtools gen-mhd4 OPTIONS \
      ~{if defined(oneOneBits) then ("--onebits " +  '"' + oneOneBits + '"') else ""}
  >>>
}