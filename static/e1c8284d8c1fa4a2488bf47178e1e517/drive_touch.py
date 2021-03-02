from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Drive_Touch_V0_1_0 = CommandToolBuilder(tool="drive_touch", base_command=["drive", "touch"], inputs=[ToolInput(tag="in_depth", input_type=Int(optional=True), prefix="-depth", doc=InputDocumentation(doc="max traversal depth (default -1)")), ToolInput(tag="in_duration", input_type=File(optional=True), prefix="-duration", doc=InputDocumentation(doc="the duration offset from now that each file's modification time should be set to e.g -32h")), ToolInput(tag="in_format", input_type=Int(optional=True), prefix="-format", doc=InputDocumentation(doc="the custom layout that you'd like your time to be set in, representative of the way 'Mon Jan 2 15:04:05 -0700 MST 2006' should be represented")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="-id", doc=InputDocumentation(doc="share by id instead of path")), ToolInput(tag="in_matches", input_type=Boolean(optional=True), prefix="-matches", doc=InputDocumentation(doc="search by prefix and touch")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="if set, do not log anything but errors")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="-recursive", doc=InputDocumentation(doc="toggles recursive touching")), ToolInput(tag="in_time", input_type=File(optional=True), prefix="-time", doc=InputDocumentation(doc="the time each file's modification time should be set to")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="show step by step information verbosely (default true)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Touch_V0_1_0().translate("wdl", allow_empty_container=True)

