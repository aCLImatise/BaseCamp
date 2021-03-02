from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Smof_Cut_V0_1_0 = CommandToolBuilder(tool="smof_cut", base_command=["smof", "cut"], inputs=[ToolInput(tag="in_fields", input_type=String(optional=True), prefix="--fields", doc=InputDocumentation(doc="Indices to print, comma delimited, with ranges")), ToolInput(tag="in_complement", input_type=Boolean(optional=True), prefix="--complement", doc=InputDocumentation(doc="Invert selection")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Cut_V0_1_0().translate("wdl", allow_empty_container=True)

