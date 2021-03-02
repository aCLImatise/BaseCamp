from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pilprint_Py_V0_1_0 = CommandToolBuilder(tool="pilprint.py", base_command=["pilprint.py"], inputs=[ToolInput(tag="in_colour_printer_default", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="colour printer (default is monochrome)")), ToolInput(tag="in_print_lpr_default", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="print via lpr (default is stdout)")), ToolInput(tag="in_same_p_use", input_type=String(optional=True), prefix="-P", doc=InputDocumentation(doc="same as -p but use given printer")), ToolInput(tag="in_files_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pilprint_Py_V0_1_0().translate("wdl", allow_empty_container=True)

