from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Ptdump_V0_1_0 = CommandToolBuilder(tool="ptdump", base_command=["ptdump"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="dump more metainformation on nodes")), ToolInput(tag="in_dump", input_type=Boolean(optional=True), prefix="--dump", doc=InputDocumentation(doc="dump data information on leaves")), ToolInput(tag="in_show_attrs", input_type=Boolean(optional=True), prefix="--showattrs", doc=InputDocumentation(doc="show attributes in nodes (only useful when -v or -d\nare active)")), ToolInput(tag="in_sort", input_type=Boolean(optional=True), prefix="--sort", doc=InputDocumentation(doc="sort output by node name")), ToolInput(tag="in_col_info", input_type=Boolean(optional=True), prefix="--colinfo", doc=InputDocumentation(doc="show info of columns in tables (only useful when -v or")), ToolInput(tag="in_idx_info", input_type=Boolean(optional=True), prefix="--idxinfo", doc=InputDocumentation(doc="show info of indexed columns (only useful when -v or")), ToolInput(tag="in_range", input_type=Int(optional=True), prefix="--range", doc=InputDocumentation(doc="select a RANGE of rows (in the form 'start,stop,step')\nduring the copy of *all* the leaves. Default values\nare 'None,None,1', which means a copy of all the rows.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ptdump_V0_1_0().translate("wdl", allow_empty_container=True)

