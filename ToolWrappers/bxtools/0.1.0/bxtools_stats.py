from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bxtools_Stats_V0_1_0 = CommandToolBuilder(tool="bxtools_stats", base_command=["bxtools", "stats"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set verbose output")), ToolInput(tag="in_tag", input_type=Boolean(optional=True), prefix="--tag", doc=InputDocumentation(doc="Collect stats by a tag other than BX (e.g. MI)")), ToolInput(tag="in_bx_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_stat", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_slash_sam_slash_cram", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bxtools_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

