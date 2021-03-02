from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Bed_Intersect_Py_V0_1_0 = CommandToolBuilder(tool="bed_intersect.py", base_command=["bed_intersect.py"], inputs=[ToolInput(tag="in_min_cols", input_type=Int(optional=True), prefix="--mincols", doc=InputDocumentation(doc="Require this much overlap (default 1bp)")), ToolInput(tag="in_upstream_pad", input_type=Int(optional=True), prefix="--upstream_pad", doc=InputDocumentation(doc="upstream interval padding (default 0bp)")), ToolInput(tag="in_downstream_pad", input_type=Int(optional=True), prefix="--downstream_pad", doc=InputDocumentation(doc="downstream interval padding (default 0bp)")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="Print regions that DO NOT overlap")), ToolInput(tag="in_booleans", input_type=Boolean(optional=True), prefix="--booleans", doc=InputDocumentation(doc="Just print '1' if interval overlaps or '0' otherwise")), ToolInput(tag="in_bed_file_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_file_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed_Intersect_Py_V0_1_0().translate("wdl", allow_empty_container=True)

