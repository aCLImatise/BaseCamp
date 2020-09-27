version 1.0

task H2xs {
  input {
    Boolean? omit_autoload
    Boolean? beta_version
    Boolean? omit_changes
    Boolean? cpp_flags
    Boolean? func_mask
    Boolean? overwrite_ok
    Boolean? omit_pod
    Boolean? omit_xs
    Boolean? gen_accessors
    Boolean? compat_version
    Boolean? omit_constant
    Boolean? debugging
    Boolean? omit_enums
    Boolean? force
    Boolean? global
    String? omit_const_func
    Boolean? gen_tied_var
    Boolean? opaque_re
    Boolean? remove_prefix
    Boolean? const_subs
    Boolean? default_type
    Boolean? use_new_tests
    Boolean? use_old_tests
    Boolean? skip_exporter
    Boolean? skip_pp_port
    String? skip_autoloader
    Boolean? skip_strict
    Boolean? skip_warnings
    Boolean? autogen_x_subs
    Boolean? use_xs_loader
    String variables_dot
  }
  command <<<
    h2xs \
      ~{variables_dot} \
      ~{if (omit_autoload) then "--omit-autoload" else ""} \
      ~{if (beta_version) then "--beta-version" else ""} \
      ~{if (omit_changes) then "--omit-changes" else ""} \
      ~{if (cpp_flags) then "--cpp-flags" else ""} \
      ~{if (func_mask) then "--func-mask" else ""} \
      ~{if (overwrite_ok) then "--overwrite-ok" else ""} \
      ~{if (omit_pod) then "--omit-pod" else ""} \
      ~{if (omit_xs) then "--omit-XS" else ""} \
      ~{if (gen_accessors) then "--gen-accessors" else ""} \
      ~{if (compat_version) then "--compat-version" else ""} \
      ~{if (omit_constant) then "--omit-constant" else ""} \
      ~{if (debugging) then "--debugging" else ""} \
      ~{if (omit_enums) then "--omit-enums" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (global) then "--global" else ""} \
      ~{if defined(omit_const_func) then ("--omit-const-func " +  '"' + omit_const_func + '"') else ""} \
      ~{if (gen_tied_var) then "--gen-tied-var" else ""} \
      ~{if (opaque_re) then "--opaque-re" else ""} \
      ~{if (remove_prefix) then "--remove-prefix" else ""} \
      ~{if (const_subs) then "--const-subs" else ""} \
      ~{if (default_type) then "--default-type" else ""} \
      ~{if (use_new_tests) then "--use-new-tests" else ""} \
      ~{if (use_old_tests) then "--use-old-tests" else ""} \
      ~{if (skip_exporter) then "--skip-exporter" else ""} \
      ~{if (skip_pp_port) then "--skip-ppport" else ""} \
      ~{if defined(skip_autoloader) then ("--skip-autoloader " +  '"' + skip_autoloader + '"') else ""} \
      ~{if (skip_strict) then "--skip-strict" else ""} \
      ~{if (skip_warnings) then "--skip-warnings" else ""} \
      ~{if (autogen_x_subs) then "--autogen-xsubs" else ""} \
      ~{if (use_xs_loader) then "--use-xsloader" else ""}
  >>>
  parameter_meta {
    omit_autoload: "Omit all autoloading facilities (implies -c)."
    beta_version: "Use beta $VERSION of 0.00_01 (ignored if -v)."
    omit_changes: "Omit creating the Changes file, add HISTORY heading\\nto stub POD."
    cpp_flags: "Additional flags for C preprocessor/compile."
    func_mask: "Mask to select C functions/macros\\n(default is select all)."
    overwrite_ok: "Allow overwriting of a pre-existing extension directory."
    omit_pod: "Omit the stub POD section."
    omit_xs: "Omit the XS portion (implies both -c and -f)."
    gen_accessors: "Generate get/set accessors for struct and union members\\n(used with -x)."
    compat_version: "Specify a perl version to be backwards compatible with."
    omit_constant: "Omit the constant() function and specialised AUTOLOAD\\nfrom the XS file."
    debugging: "Turn on debugging messages."
    omit_enums: "Omit constants from enums in the constant() function.\\nIf a pattern is given, only the matching enums are\\nignored."
    force: "Force creation of the extension even if the C header\\ndoes not exist."
    global: "Include code for safely storing static data in the .xs file."
    omit_const_func: "'const' attribute on function arguments\\n(used with -x)."
    gen_tied_var: "Generate tied variables for access to declared"
    opaque_re: "Regular expression for \\\"opaque\\\" types."
    remove_prefix: "Specify a prefix which should be removed from the\\nPerl function names."
    const_subs: "Create subroutines for specified macros."
    default_type: "Default type for autoloaded constants (default is IV)."
    use_new_tests: "Use Test::More in backward compatible modules."
    use_old_tests: "Use the module Test rather than Test::More."
    skip_exporter: "Do not export symbols."
    skip_pp_port: "Do not use portability layer."
    skip_autoloader: "not use the module C<AutoLoader>."
    skip_strict: "Do not use the pragma C<strict>."
    skip_warnings: "Do not use the pragma C<warnings>."
    autogen_x_subs: "Autogenerate XSUBs using C::Scan."
    use_xs_loader: "Use XSLoader in backward compatible modules (ignored\\nwhen used with -X)."
    variables_dot: "-n, --name            Specify a name to use for the extension (recommended)."
  }
  output {
    File out_stdout = stdout()
  }
}