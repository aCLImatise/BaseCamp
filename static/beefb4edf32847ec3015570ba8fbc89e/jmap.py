from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Jmap_V0_1_0 = CommandToolBuilder(tool="jmap", base_command=["jmap"], inputs=[ToolInput(tag="in_dump", input_type=Boolean(optional=True), prefix="-dump", doc=InputDocumentation(doc="")), ToolInput(tag="in_histo", input_type=Boolean(optional=True), prefix="-histo", doc=InputDocumentation(doc="")), ToolInput(tag="in_finalizer_info", input_type=String(optional=True), prefix="-finalizerinfo", doc=InputDocumentation(doc="")), ToolInput(tag="in_cl_stats", input_type=String(optional=True), prefix="-clstats", doc=InputDocumentation(doc="")), ToolInput(tag="in_live", input_type=String(), position=0, doc=InputDocumentation(doc="dump only live objects; if not specified,\nall objects in the heap are dumped."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jmap_V0_1_0().translate("wdl", allow_empty_container=True)

