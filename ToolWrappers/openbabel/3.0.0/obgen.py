from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Obgen_V0_1_0 = CommandToolBuilder(tool="obgen", base_command=["obgen"], inputs=[ToolInput(tag="in_ff", input_type=Boolean(optional=True), prefix="-ff", doc=InputDocumentation(doc="select a forcefield")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obgen_V0_1_0().translate("wdl", allow_empty_container=True)

