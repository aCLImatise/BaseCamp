from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String, Boolean

Cnvkit_Py_Export_Theta_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_export_theta", base_command=["cnvkit.py", "export", "theta"], inputs=[ToolInput(tag="in_reference", input_type=Int(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference copy number profile (.cnn), or normal-sample\nbin-level log2 copy ratios (.cnr). Use if the\ntumor_segment input file does not contain a 'weight'\ncolumn.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name.")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="VCF file containing SNVs observed in both the tumor\nand normal samples. Tumor sample ID should match the\n`tumor_segment` filename or be specified with\n-i/--sample-id.")), ToolInput(tag="in_sample_id", input_type=File(optional=True), prefix="--sample-id", doc=InputDocumentation(doc="Specify the name of the tumor sample in the VCF (given\nwith -v/--vcf). [Default: taken the tumor_segment file\nname]")), ToolInput(tag="in_normal_id", input_type=String(optional=True), prefix="--normal-id", doc=InputDocumentation(doc="Corresponding normal sample ID in the input VCF.")), ToolInput(tag="in_min_variant_depth", input_type=Int(optional=True), prefix="--min-variant-depth", doc=InputDocumentation(doc="Minimum read depth for a SNP in the VCF to be counted.\n[Default: 20]")), ToolInput(tag="in_ignore_vcfs_genotypes", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="[ALT_FREQ], --zygosity-freq [ALT_FREQ]\nIgnore VCF's genotypes (GT field) and instead infer\nzygosity from allele frequencies. [Default if used\nwithout a number: 0.25]\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Export_Theta_V0_1_0().translate("wdl", allow_empty_container=True)

