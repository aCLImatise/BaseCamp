from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Dnaplotter_V0_1_0 = CommandToolBuilder(tool="dnaplotter", base_command=["dnaplotter"], inputs=[ToolInput(tag="in_read_template_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Read a template file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnaplotter_V0_1_0().translate("wdl", allow_empty_container=True)

