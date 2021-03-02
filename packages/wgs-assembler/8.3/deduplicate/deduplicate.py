from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String, Boolean

Deduplicate_V0_1_0 = CommandToolBuilder(tool="deduplicate", base_command=["deduplicate"], inputs=[ToolInput(tag="in_erate", input_type=Float(optional=True), prefix="-erate", doc=InputDocumentation(doc="filter overlaps above this fraction error; default 0.015 (== 1.5% error)")), ToolInput(tag="in_summary", input_type=String(optional=True), prefix="-summary", doc=InputDocumentation(doc="write a summary of the fixes to S")), ToolInput(tag="in_report", input_type=String(optional=True), prefix="-report", doc=InputDocumentation(doc="write a detailed report of the fixes to R")), ToolInput(tag="in_ovs", input_type=String(optional=True), prefix="-ovs", doc=InputDocumentation(doc="")), ToolInput(tag="in_gkp", input_type=String(optional=True), prefix="-gkp", doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deduplicate_V0_1_0().translate("wdl", allow_empty_container=True)

