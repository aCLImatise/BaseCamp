from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Smof_Split_V0_1_0 = CommandToolBuilder(tool="smof_split", base_command=["smof", "split"], inputs=[ToolInput(tag="in_number", input_type=Int(optional=True), prefix="--number", doc=InputDocumentation(doc="Number of output files or sequences per file")), ToolInput(tag="in_seqs", input_type=Boolean(optional=True), prefix="--seqs", doc=InputDocumentation(doc="split by maximum sequences per file")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="prefix for output files (default='xxx')\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Split_V0_1_0().translate("wdl", allow_empty_container=True)

