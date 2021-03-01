from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Gcloud_Debug_Logpoints_V0_1_0 = CommandToolBuilder(tool="gcloud_debug_logpoints", base_command=["gcloud", "debug", "logpoints"], inputs=[ToolInput(tag="in_target", input_type=Boolean(optional=True), prefix="--target", doc=InputDocumentation(doc="=(ID|DESCRIPTION_REGEXP)\nThe debug target. It may be a target ID or name obtained from 'debug\ntargets list', or it may be a regular expression uniquely specifying a\ndebuggee based on its description or name. For App Engine projects, if\nnot specified, the default target is the most recent deployment of the\ndefault module and version.")), ToolInput(tag="in_log_points", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create debug logpoints.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete debug logpoints.")), ToolInput(tag="in_list", input_type=String(), position=2, doc=InputDocumentation(doc="List debug logpoints.")), ToolInput(tag="in_id", input_type=String(), position=0, doc=InputDocumentation(doc="LOCATION    ...")), ToolInput(tag="in_five_six_seven_eight_nine_zero_abcdef_one_one_two_three_four_five_six_seven_eight_nine", input_type=Int(), position=1, doc=InputDocumentation(doc="product.py:123  ..."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Debug_Logpoints_V0_1_0().translate("wdl", allow_empty_container=True)

