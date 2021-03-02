from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bpipe_Jobs_V0_1_0 = CommandToolBuilder(tool="bpipe_jobs", base_command=["bpipe", "jobs"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="-all", doc=InputDocumentation(doc="Show completed  as well as running jobs")), ToolInput(tag="in_sleep", input_type=String(optional=True), prefix="-sleep", doc=InputDocumentation(doc="Sleep time when watching continuously")), ToolInput(tag="in_watch", input_type=Boolean(optional=True), prefix="-watch", doc=InputDocumentation(doc="Show continuously updated display")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bpipe_Jobs_V0_1_0().translate("wdl", allow_empty_container=True)

