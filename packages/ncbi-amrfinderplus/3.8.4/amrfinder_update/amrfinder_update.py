from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, Int, File

Amrfinder_Update_V0_1_0 = CommandToolBuilder(tool="amrfinder_update", base_command=["amrfinder_update"], inputs=[ToolInput(tag="in_database", input_type=Directory(optional=True), prefix="--database", doc=InputDocumentation(doc="Directory for all versions of AMRFinder databases\nDefault: /usr/local/bin/data")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress messages to STDERR")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Max. number of threads\nDefault: 1")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Integrity checks")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Error log file, appended, opened on application start\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amrfinder_Update_V0_1_0().translate("wdl", allow_empty_container=True)

