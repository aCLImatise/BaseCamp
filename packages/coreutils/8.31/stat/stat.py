from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Stat_V0_1_0 = CommandToolBuilder(tool="stat", base_command=["stat"], inputs=[ToolInput(tag="in_dereference", input_type=Boolean(optional=True), prefix="--dereference", doc=InputDocumentation(doc="follow links")), ToolInput(tag="in_file_system", input_type=Boolean(optional=True), prefix="--file-system", doc=InputDocumentation(doc="display file system status instead of file status")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="use the specified FORMAT instead of the default;\noutput a newline after each use of FORMAT")), ToolInput(tag="in_printf", input_type=String(optional=True), prefix="--printf", doc=InputDocumentation(doc="like --format, but interpret backslash escapes,\nand do not output a mandatory trailing newline;\nif you want a newline, include \n in FORMAT")), ToolInput(tag="in_terse", input_type=Boolean(optional=True), prefix="--terse", doc=InputDocumentation(doc="print the information in terse form"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stat_V0_1_0().translate("wdl", allow_empty_container=True)

