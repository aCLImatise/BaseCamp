from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Cwl2Wdl_V0_1_0 = CommandToolBuilder(tool="cwl2wdl", base_command=["cwl2wdl"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="specify the output format (default: wdl)")), ToolInput(tag="in_validate", input_type=Boolean(optional=True), prefix="--validate", doc=InputDocumentation(doc="validate the resulting WDL code with PyWDL (default:\nFalse)")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="CWL file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cwl2Wdl_V0_1_0().translate("wdl", allow_empty_container=True)

