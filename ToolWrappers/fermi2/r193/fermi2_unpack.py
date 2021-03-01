from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Fermi2_Unpack_V0_1_0 = CommandToolBuilder(tool="fermi2_unpack", base_command=["fermi2", "unpack"], inputs=[ToolInput(tag="in_reads_dot_rld", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_list_vertical_line_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi2_Unpack_V0_1_0().translate("wdl", allow_empty_container=True)

