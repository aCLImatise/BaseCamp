from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Ovl2Ovl_V0_1_0 = CommandToolBuilder(tool="ovl2OVL", base_command=["ovl2OVL"], inputs=[ToolInput(tag="in_version_print_version", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="|version      - Print the version and exit;")), ToolInput(tag="in_depend", input_type=Boolean(optional=True), prefix="-depend", doc=InputDocumentation(doc="- Print the program and database dependency list;")), ToolInput(tag="in_debug", input_type=Int(optional=True), prefix="-debug", doc=InputDocumentation(doc="- Set the debug <level> (0, non-debug by default);")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ovl2Ovl_V0_1_0().translate("wdl", allow_empty_container=True)

