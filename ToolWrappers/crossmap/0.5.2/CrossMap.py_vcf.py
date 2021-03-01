from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Crossmap_Py_Vcf_V0_1_0 = CommandToolBuilder(tool="CrossMap.py_vcf", base_command=["CrossMap.py", "vcf"], inputs=[ToolInput(tag="in_no_comp_alleles", input_type=Boolean(optional=True), prefix="--no-comp-alleles", doc=InputDocumentation(doc="If set, CrossMap does NOT check if the reference allele\nis different from the alternate allele.")), ToolInput(tag="in_compress", input_type=File(optional=True), prefix="--compress", doc=InputDocumentation(doc="If set, compress the output VCF file by calling the\nsystem 'gzip'.\n")), ToolInput(tag="in_chain_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot_vcf", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_genome_dot_fa", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_compress", output_type=File(optional=True), selector=InputSelector(input_to_select="in_compress", type_hint=File()), doc=OutputDocumentation(doc="If set, compress the output VCF file by calling the\nsystem 'gzip'.\n"))], container="quay.io/biocontainers/crossmap:0.5.2--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crossmap_Py_Vcf_V0_1_0().translate("wdl")

