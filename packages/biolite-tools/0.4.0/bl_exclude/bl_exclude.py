from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bl_Exclude_V0_1_0 = CommandToolBuilder(tool="bl_exclude", base_command=["bl-exclude"], inputs=[ToolInput(tag="in_line_excludefile_truncated", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="each line in EXCLUDE_FILE is truncated by a space or tab and\nstored as an id to exclude")), ToolInput(tag="in_invert_exclude_file", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="invert exclude file to keep entries")), ToolInput(tag="in_specify_multiple_input_files", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="specify multiple INPUT files")), ToolInput(tag="in_specify_multiple_output_files", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="specify multiple OUTPUT files")), ToolInput(tag="in_exclude", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bl_Exclude_V0_1_0().translate("wdl", allow_empty_container=True)

