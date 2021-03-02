from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Delta2Clr_V0_1_0 = CommandToolBuilder(tool="delta2clr", base_command=["delta2clr"], inputs=[ToolInput(tag="in_zero_cvg", input_type=File(optional=True), prefix="-zero_cvg", doc=InputDocumentation(doc="- File that contain zero coverage regions;\nreads ending in these regions won't get trimmed")), ToolInput(tag="in_version_print_version", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="|version      - Print the version and exit;")), ToolInput(tag="in_depend", input_type=Boolean(optional=True), prefix="-depend", doc=InputDocumentation(doc="- Print the program and database dependency list;")), ToolInput(tag="in_debug", input_type=Int(optional=True), prefix="-debug", doc=InputDocumentation(doc="- Set the debug <level> (0, non-debug by default);"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Delta2Clr_V0_1_0().translate("wdl", allow_empty_container=True)

