from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Gfatools_Blacklist_V0_1_0 = CommandToolBuilder(tool="gfatools_blacklist", base_command=["gfatools", "blacklist"], inputs=[ToolInput(tag="in_min_region_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="min region length [100]")), ToolInput(tag="in_include_regions_involving", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="include regions involving both strands (mostly inversions)")), ToolInput(tag="in_in_dot_gfa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gfatools:0.5--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfatools_Blacklist_V0_1_0().translate("wdl")

