from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Directory

Oncogemini_Update_V0_1_0 = CommandToolBuilder(tool="oncogemini_update", base_command=["oncogemini", "update"], inputs=[ToolInput(tag="in_devel", input_type=Boolean(optional=True), prefix="--devel", doc=InputDocumentation(doc="Get the latest development version instead of the")), ToolInput(tag="in_no_data", input_type=Boolean(optional=True), prefix="--nodata", doc=InputDocumentation(doc="Do not install data dependencies")), ToolInput(tag="in_extra", input_type=String(optional=True), prefix="--extra", doc=InputDocumentation(doc="Add additional non-standard genome annotations to\ninclude")), ToolInput(tag="in_tool_dir", input_type=Directory(optional=True), prefix="--tooldir", doc=InputDocumentation(doc="Directory for third party tools (ie /usr/local) update")), ToolInput(tag="in_data_only", input_type=Boolean(optional=True), prefix="--dataonly", doc=InputDocumentation(doc="")), ToolInput(tag="in_release", input_type=String(), position=0, doc=InputDocumentation(doc="--dataonly            Only update data, not the underlying libraries."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncogemini_Update_V0_1_0().translate("wdl", allow_empty_container=True)

