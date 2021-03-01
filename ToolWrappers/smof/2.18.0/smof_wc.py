from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Smof_Wc_V0_1_0 = CommandToolBuilder(tool="smof_wc", base_command=["smof", "wc"], inputs=[ToolInput(tag="in_chars", input_type=Boolean(optional=True), prefix="--chars", doc=InputDocumentation(doc="writes the summed length of all sequences")), ToolInput(tag="in_lines", input_type=Boolean(optional=True), prefix="--lines", doc=InputDocumentation(doc="writes the total number of sequences")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Wc_V0_1_0().translate("wdl", allow_empty_container=True)

