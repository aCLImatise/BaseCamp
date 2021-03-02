from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Nw_Match_V0_1_0 = CommandToolBuilder(tool="nw_match", base_command=["nw_match"], inputs=[ToolInput(tag="in_hv", input_type=Boolean(optional=True), prefix="-hv", doc=InputDocumentation(doc="")), ToolInput(tag="in_target_trees_filename_vertical_line", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pattern", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Match_V0_1_0().translate("wdl", allow_empty_container=True)

