from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, Int, String

Seqtk_Gc_V0_1_0 = CommandToolBuilder(tool="seqtk_gc", base_command=["seqtk", "gc"], inputs=[ToolInput(tag="in_identify_highat_regions", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="identify high-AT regions")), ToolInput(tag="in_min_gc_fraction", input_type=Float(optional=True), prefix="-f", doc=InputDocumentation(doc="min GC fraction (or AT fraction for -w) [0.60]")), ToolInput(tag="in_min_region_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="min region length to output [0]")), ToolInput(tag="in_xdropoff", input_type=Float(optional=True), prefix="-x", doc=InputDocumentation(doc="X-dropoff [10.0]")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtk_Gc_V0_1_0().translate("wdl", allow_empty_container=True)

