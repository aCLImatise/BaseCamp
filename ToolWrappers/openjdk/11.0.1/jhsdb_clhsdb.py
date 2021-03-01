from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Jhsdb_Clhsdb_V0_1_0 = CommandToolBuilder(tool="jhsdb_clhsdb", base_command=["jhsdb", "clhsdb"], inputs=[ToolInput(tag="in_exe", input_type=Boolean(optional=True), prefix="--exe", doc=InputDocumentation(doc="executable image name")), ToolInput(tag="in_core", input_type=Boolean(optional=True), prefix="--core", doc=InputDocumentation(doc="path to coredump")), ToolInput(tag="in_pid", input_type=Boolean(optional=True), prefix="--pid", doc=InputDocumentation(doc="pid of process to attach"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jhsdb_Clhsdb_V0_1_0().translate("wdl", allow_empty_container=True)

