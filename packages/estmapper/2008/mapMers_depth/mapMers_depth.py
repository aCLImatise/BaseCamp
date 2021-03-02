from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Mapmers_Depth_V0_1_0 = CommandToolBuilder(tool="mapMers_depth", base_command=["mapMers-depth"], inputs=[ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="-count", doc=InputDocumentation(doc="- report the count (c) of the single kmer that starts at position (p).\nFormat: 's p c'")), ToolInput(tag="in_depth", input_type=Boolean(optional=True), prefix="-depth", doc=InputDocumentation(doc="- report the number (n) of kmers that span position (p).  Format: 's p n'")), ToolInput(tag="in_stats", input_type=Boolean(optional=True), prefix="-stats", doc=InputDocumentation(doc="- report the min (m), max (M), ave (a) count of all mers that span\nposition (p).  Format: 's p m M a t n'\n(also reports total count (t) and number of kmers (n))")), ToolInput(tag="in_seq", input_type=String(optional=True), prefix="-seq", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_mers", input_type=String(optional=True), prefix="-mers", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapmers_Depth_V0_1_0().translate("wdl", allow_empty_container=True)

