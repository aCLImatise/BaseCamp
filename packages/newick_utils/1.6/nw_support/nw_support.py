from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Nw_Support_V0_1_0 = CommandToolBuilder(tool="nw_support", base_command=["nw_support"], inputs=[ToolInput(tag="in_hlp", input_type=Boolean(optional=True), prefix="-hlp", doc=InputDocumentation(doc="")), ToolInput(tag="in_target_tree_filename_vertical_line", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_replicates_filename", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Support_V0_1_0().translate("wdl", allow_empty_container=True)

