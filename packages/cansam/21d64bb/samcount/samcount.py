from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Samcount_V0_1_0 = CommandToolBuilder(tool="samcount", base_command=["samcount"], inputs=[ToolInput(tag="in_display_statistics_library", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Display statistics for each library")), ToolInput(tag="in_display_statistics_read", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Display statistics for each read group (by default, displays both)")), ToolInput(tag="in_lr", input_type=Boolean(optional=True), prefix="-lr", doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samcount_V0_1_0().translate("wdl", allow_empty_container=True)

