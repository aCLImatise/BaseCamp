from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gcloud_Debug_Snapshots_V0_1_0 = CommandToolBuilder(tool="gcloud_debug_snapshots", base_command=["gcloud", "debug", "snapshots"], inputs=[ToolInput(tag="in_target", input_type=Boolean(optional=True), prefix="--target", doc=InputDocumentation(doc="=(ID|DESCRIPTION_REGEXP)\nThe debug target. It may be a target ID or name obtained from 'debug\ntargets list', or it may be a regular expression uniquely specifying a\ndebuggee based on its description or name. For App Engine projects, if\nnot specified, the default target is the most recent deployment of the\ndefault module and version.")), ToolInput(tag="in_snapshots", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create debug snapshots.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete debug snapshots.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Describe debug snapshots.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="List debug snapshots.")), ToolInput(tag="in_wait", input_type=String(), position=4, doc=InputDocumentation(doc="Wait for debug snapshots to complete."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Debug_Snapshots_V0_1_0().translate("wdl", allow_empty_container=True)

