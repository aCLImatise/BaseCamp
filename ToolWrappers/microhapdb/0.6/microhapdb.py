from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Microhapdb_V0_1_0 = CommandToolBuilder(tool="microhapdb", base_command=["microhapdb"], inputs=[ToolInput(tag="in_files", input_type=Boolean(optional=True), prefix="--files", doc=InputDocumentation(doc="print data table filenames and exit")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_cmd", input_type=String(), position=0, doc=InputDocumentation(doc="frequency, lookup, marker, population"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Microhapdb_V0_1_0().translate("wdl", allow_empty_container=True)

