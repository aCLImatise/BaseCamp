from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Slamdunk_Snp_Bam_V0_1_0 = CommandToolBuilder(tool="slamdunk_snp_bam", base_command=["slamdunk", "snp", "bam"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_slam_dunk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_snp", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slamdunk_Snp_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

