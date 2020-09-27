version 1.0

task ItkTestDriver {
  input {
    File? add_before_libpath
    String? add_before_env
    String? add_before_env_with_sep
    String? remove_env
    String? compare
    Int? compare_md_five
    String? with_threads
    Boolean? without_threads
    Int? compare_number_of_pixels_tolerance
    Int? compare_radius_tolerance
    Float? compare_intensity_tolerance
    Boolean? no_process
    Boolean? full_output
    File? redirect_output
    String prg
    String? args
  }
  command <<<
    itkTestDriver \
      ~{prg} \
      ~{args} \
      ~{if defined(add_before_libpath) then ("--add-before-libpath " +  '"' + add_before_libpath + '"') else ""} \
      ~{if defined(add_before_env) then ("--add-before-env " +  '"' + add_before_env + '"') else ""} \
      ~{if defined(add_before_env_with_sep) then ("--add-before-env-with-sep " +  '"' + add_before_env_with_sep + '"') else ""} \
      ~{if defined(remove_env) then ("--remove-env " +  '"' + remove_env + '"') else ""} \
      ~{if defined(compare) then ("--compare " +  '"' + compare + '"') else ""} \
      ~{if defined(compare_md_five) then ("--compare-MD5 " +  '"' + compare_md_five + '"') else ""} \
      ~{if defined(with_threads) then ("--with-threads " +  '"' + with_threads + '"') else ""} \
      ~{if (without_threads) then "--without-threads" else ""} \
      ~{if defined(compare_number_of_pixels_tolerance) then ("--compareNumberOfPixelsTolerance " +  '"' + compare_number_of_pixels_tolerance + '"') else ""} \
      ~{if defined(compare_radius_tolerance) then ("--compareRadiusTolerance " +  '"' + compare_radius_tolerance + '"') else ""} \
      ~{if defined(compare_intensity_tolerance) then ("--compareIntensityTolerance " +  '"' + compare_intensity_tolerance + '"') else ""} \
      ~{if (no_process) then "--no-process" else ""} \
      ~{if (full_output) then "--full-output" else ""} \
      ~{if defined(redirect_output) then ("--redirect-output " +  '"' + redirect_output + '"') else ""}
  >>>
  parameter_meta {
    add_before_libpath: "Add a path to the library path environment. This option take care of\\nchoosing the right environment variable for your system.\\nThis option can be used several times."
    add_before_env: "VALUE\\nAdd a VALUE to the variable name in the environment.\\nThe seperator used is the default one on the system.\\nThis option can be used several times."
    add_before_env_with_sep: "VALUE SEP\\nAdd a VALUE to the variable name in the environment using the provided separator.\\nThis option can be used several times."
    remove_env: "Remove the variable name from the environment.\\nThis option can be used several times."
    compare: "BASELINE\\nCompare the TEST image to the BASELINE one.\\nThis option can be used several times."
    compare_md_five: "md5hash0 [ md5hash1 ... ]\\nCompare the TEST image file's md5 hash to the provided hash.\\nmd5hash0 is required and assumed to be a hash.\\nAdditional arguments are considered hashes when the string is 32 hexi-decimal characters.\\nThis option can be used several times for multiple comparisons."
    with_threads: "Use at most THREADS threads."
    without_threads: "Use at most one thread."
    compare_number_of_pixels_tolerance: "When comparing images with --compare, allow TOLERANCE pixels to differ.\\nDefault is 0."
    compare_radius_tolerance: "Default is 0."
    compare_intensity_tolerance: "Default is 2.0."
    no_process: "The test driver will not invoke any process."
    full_output: "Causes the full output of the test to be passed to cdash."
    redirect_output: "Redirects the test output to the file TEST_OUTPUT."
    prg: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
    File out_redirect_output = "${in_redirect_output}"
  }
}