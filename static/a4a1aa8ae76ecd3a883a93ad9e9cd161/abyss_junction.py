from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Abyss_Junction_V0_1_0 = CommandToolBuilder(tool="abyss_junction", base_command=["abyss-junction"], inputs=[ToolInput(tag="in_ignore", input_type=File(optional=True), prefix="--ignore", doc=InputDocumentation(doc="ignore junctions seen in FILE")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_overlap", input_type=String(), position=0, doc=InputDocumentation(doc="the overlap graph")), ToolInput(tag="in_scaffold", input_type=String(), position=1, doc=InputDocumentation(doc="a scaffold graph"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Junction_V0_1_0().translate("wdl", allow_empty_container=True)

