from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hpcrunner_Pl_Archive_V0_1_0 = CommandToolBuilder(tool="hpcrunner.pl_archive", base_command=["hpcrunner.pl", "archive"], inputs=[ToolInput(tag="in_include_paths", input_type=Boolean(optional=True), prefix="--include_paths", doc=InputDocumentation(doc="Include files or directories [Multiple]")), ToolInput(tag="in_exclude_paths", input_type=Boolean(optional=True), prefix="--exclude_paths", doc=InputDocumentation(doc="Files or directories to exclude [Multiple]")), ToolInput(tag="in_help", input_type=String(), position=0, doc=InputDocumentation(doc="Prints this usage information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hpcrunner_Pl_Archive_V0_1_0().translate("wdl", allow_empty_container=True)

