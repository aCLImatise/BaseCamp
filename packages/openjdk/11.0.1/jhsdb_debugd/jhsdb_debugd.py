from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Jhsdb_Debugd_V0_1_0 = CommandToolBuilder(tool="jhsdb_debugd", base_command=["jhsdb", "debugd"], inputs=[ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sun_dot_jvm_dot_hotspot_dot_debug_server", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_pid", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_server", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_id", input_type=String(optional=True), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jhsdb_Debugd_V0_1_0().translate("wdl", allow_empty_container=True)

