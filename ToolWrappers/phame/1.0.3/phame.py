from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Phame_V0_1_0 = CommandToolBuilder(tool="phame", base_command=["phame"], inputs=[ToolInput(tag="in_help_message_exit", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="this help message and exit")), ToolInput(tag="in_version_number_exit", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="version number and exit")), ToolInput(tag="in_v_check", input_type=File(optional=True), prefix="--vcheck", doc=InputDocumentation(doc="if all depenencies are correct and in path.")), ToolInput(tag="in_control_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phame_V0_1_0().translate("wdl", allow_empty_container=True)

