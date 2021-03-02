from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Nextflow_Bak_Console_V0_1_0 = CommandToolBuilder(tool="nextflow.bak_console", base_command=["nextflow.bak", "console"], inputs=[ToolInput(tag="in_filename", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_Bak_Console_V0_1_0().translate("wdl", allow_empty_container=True)

