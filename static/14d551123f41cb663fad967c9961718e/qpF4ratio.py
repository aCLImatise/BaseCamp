from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Qpf4Ratio_V0_1_0 = CommandToolBuilder(tool="qpF4ratio", base_command=["qpF4ratio"], inputs=[ToolInput(tag="in_use_parameters_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="... use parameters from <file> .")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="... print version and exit.")), ToolInput(tag="in_toggle_verbose_mode", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="... toggle verbose mode ON.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qpf4Ratio_V0_1_0().translate("wdl", allow_empty_container=True)

