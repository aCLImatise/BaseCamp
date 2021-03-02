from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Initialtrim_V0_1_0 = CommandToolBuilder(tool="initialTrim", base_command=["initialTrim"], inputs=[ToolInput(tag="in_find_quality_points", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="Find quality trim points using 'quality' as the base.")), ToolInput(tag="in_log", input_type=String(optional=True), prefix="-log", doc=InputDocumentation(doc="Report the iid, original trim and new quality trim")), ToolInput(tag="in_frg", input_type=String(optional=True), prefix="-frg", doc=InputDocumentation(doc="Operate on this gkpStore")), ToolInput(tag="in_be_uselessly_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Be uselessly verbose (for debugging)")), ToolInput(tag="in_replace", input_type=Boolean(optional=True), prefix="-replace", doc=InputDocumentation(doc="")), ToolInput(tag="in_update", input_type=Boolean(optional=True), prefix="-update", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Initialtrim_V0_1_0().translate("wdl", allow_empty_container=True)

