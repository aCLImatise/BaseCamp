from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Phyluce_Snp_Find_Snps_In_Bed_Interval_V0_1_0 = CommandToolBuilder(tool="phyluce_snp_find_snps_in_bed_interval", base_command=["phyluce_snp_find_snps_in_bed_interval"], inputs=[ToolInput(tag="in_uce", input_type=File(optional=True), prefix="--uce", doc=InputDocumentation(doc="The UCE BED file")), ToolInput(tag="in_snp", input_type=File(optional=True), prefix="--snp", doc=InputDocumentation(doc="The SNP intersection BED file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output file"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Snp_Find_Snps_In_Bed_Interval_V0_1_0().translate("wdl", allow_empty_container=True)

