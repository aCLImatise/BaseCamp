from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bzfgrep_V0_1_0 = CommandToolBuilder(tool="bzfgrep", base_command=["bzfgrep"], inputs=[ToolInput(tag="in_grep_options", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pattern", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bzip2:1.0.8", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bzfgrep_V0_1_0().translate("wdl")

