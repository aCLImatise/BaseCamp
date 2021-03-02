from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Zipgrep_V0_1_0 = CommandToolBuilder(tool="zipgrep", base_command=["zipgrep"], inputs=[ToolInput(tag="in_egrep_options", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pattern", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_zip_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_members_dot_dot_dot", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/unzip:6.0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zipgrep_V0_1_0().translate("wdl")

