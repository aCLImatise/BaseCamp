from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Gaptolift_V0_1_0 = CommandToolBuilder(tool="gapToLift", base_command=["gapToLift"], inputs=[ToolInput(tag="in_chr", input_type=String(optional=True), prefix="-chr", doc=InputDocumentation(doc="- work only on given chrom")), ToolInput(tag="in_min_gap", input_type=String(optional=True), prefix="-minGap", doc=InputDocumentation(doc="- examine gaps only >= than M")), ToolInput(tag="in_insane", input_type=Boolean(optional=True), prefix="-insane", doc=InputDocumentation(doc="- do *not* perform coordinate sanity checks on gaps")), ToolInput(tag="in_bed_file", input_type=File(optional=True), prefix="-bedFile", doc=InputDocumentation(doc="- output segments to fileName.bed")), ToolInput(tag="in_allow_bridged", input_type=Boolean(optional=True), prefix="-allowBridged", doc=InputDocumentation(doc="- consider any type of gap not just the non-bridged gaps")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="- N > 1 see more information about procedure")), ToolInput(tag="in_db", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_lift_file_dot_lft", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bed_file", type_hint=File()), doc=OutputDocumentation(doc="- output segments to fileName.bed"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gaptolift_V0_1_0().translate("wdl", allow_empty_container=True)

