from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Cnvkit_Py_Export_Nexus_Ogt_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_export_nexus_ogt", base_command=["cnvkit.py", "export", "nexus-ogt"], inputs=[ToolInput(tag="in_sample_id", input_type=String(optional=True), prefix="--sample-id", doc=InputDocumentation(doc="Specify the name of the sample in the VCF to use to\nextract b-allele frequencies.")), ToolInput(tag="in_normal_id", input_type=String(optional=True), prefix="--normal-id", doc=InputDocumentation(doc="Corresponding normal sample ID in the input VCF.")), ToolInput(tag="in_min_variant_depth", input_type=Int(optional=True), prefix="--min-variant-depth", doc=InputDocumentation(doc="Minimum read depth for a SNV to be included in the\nb-allele frequency calculation. [Default: 20]")), ToolInput(tag="in_ignore_vcfs_genotypes", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="[ALT_FREQ], --zygosity-freq [ALT_FREQ]\nIgnore VCF's genotypes (GT field) and instead infer\nzygosity from allele frequencies. [Default if used\nwithout a number: 0.25]")), ToolInput(tag="in_min_weight", input_type=Int(optional=True), prefix="--min-weight", doc=InputDocumentation(doc="Minimum weight (between 0 and 1) for a bin to be\nincluded in the output. [Default: 0.0]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name.\n")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="Log2 copy ratio data file (*.cnr), the output of the\n'fix' sub-command.")), ToolInput(tag="in_vcf", input_type=String(), position=1, doc=InputDocumentation(doc="VCF of SNVs for the same sample, to calculate b-allele")), ToolInput(tag="in_frequencies_dot", input_type=String(), position=2, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Export_Nexus_Ogt_V0_1_0().translate("wdl", allow_empty_container=True)

