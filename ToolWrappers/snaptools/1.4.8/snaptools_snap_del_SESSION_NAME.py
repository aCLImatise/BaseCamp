from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Snaptools_Snap_Del_Session_Name_V0_1_0 = CommandToolBuilder(tool="snaptools_snap_del_SESSION_NAME", base_command=["snaptools", "snap-del", "SESSION_NAME"], inputs=[ToolInput(tag="in_session_name", input_type=Boolean(optional=True), prefix="--session-name", doc=InputDocumentation(doc="")), ToolInput(tag="in_snap_file", input_type=File(optional=True), prefix="--snap-file", doc=InputDocumentation(doc="")), ToolInput(tag="in_snap_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_snap_del", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snaptools_Snap_Del_Session_Name_V0_1_0().translate("wdl", allow_empty_container=True)

