from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, String

Smof_Filter_V0_1_0 = CommandToolBuilder(tool="smof_filter", base_command=["smof", "filter"], inputs=[ToolInput(tag="in_shorter_than", input_type=Int(optional=True), prefix="--shorter-than", doc=InputDocumentation(doc="keep only if length is less than or equal to LEN")), ToolInput(tag="in_longer_than", input_type=Int(optional=True), prefix="--longer-than", doc=InputDocumentation(doc="keep only if length is greater than or equal to LEN")), ToolInput(tag="in_composition", input_type=Float(optional=True), prefix="--composition", doc=InputDocumentation(doc="keep only if composition meets the condition (e.g. 'GC\n> .5')\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

