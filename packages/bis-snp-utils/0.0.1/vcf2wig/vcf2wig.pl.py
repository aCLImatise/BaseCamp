from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Vcf2Wig_Pl_V0_1_0 = CommandToolBuilder(tool="vcf2wig.pl", base_command=["vcf2wig.pl"], inputs=[ToolInput(tag="in_min_ct", input_type=Int(optional=True), prefix="--minCT", doc=InputDocumentation(doc=": minimum number of CT reads, otherwise, methy column will be '.' (default: 1)")), ToolInput(tag="in_input_file_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cg", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Wig_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

