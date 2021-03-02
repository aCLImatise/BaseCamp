from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Smof_Head_V0_1_0 = CommandToolBuilder(tool="smof_head", base_command=["smof", "head"], inputs=[ToolInput(tag="in_entries", input_type=String(optional=True), prefix="--entries", doc=InputDocumentation(doc="print first K entries; or use -n -K to print all but the\nlast K entries")), ToolInput(tag="in_first", input_type=String(optional=True), prefix="--first", doc=InputDocumentation(doc="print first K letters of each sequence")), ToolInput(tag="in_last", input_type=String(optional=True), prefix="--last", doc=InputDocumentation(doc="print last K letters of each sequence")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Head_V0_1_0().translate("wdl", allow_empty_container=True)

