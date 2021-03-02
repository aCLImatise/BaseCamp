from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tophat_Reports_V0_1_0 = CommandToolBuilder(tool="tophat_reports", base_command=["tophat_reports"], inputs=[ToolInput(tag="in_junctions_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_insertions_dot_vcf", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_deletions_dot_vcf", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_accepted_hits_dots_am", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tophat_Reports_V0_1_0().translate("wdl", allow_empty_container=True)

