from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vcfnormalizesvs_V0_1_0 = CommandToolBuilder(tool="vcfnormalizesvs", base_command=["vcfnormalizesvs"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="FASTA-format reference genome from which to pull SV sequences.")), ToolInput(tag="in_insertions", input_type=String(optional=True), prefix="--insertions", doc=InputDocumentation(doc="FASTA-format insertion sequences, with IDs matching the ALT allele tags in the vcf")), ToolInput(tag="in_var_dot_vcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfnormalizesvs_V0_1_0().translate("wdl", allow_empty_container=True)

