from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Smof_Translate_V0_1_0 = CommandToolBuilder(tool="smof_translate", base_command=["smof", "translate"], inputs=[ToolInput(tag="in_from_start", input_type=Boolean(optional=True), prefix="--from-start", doc=InputDocumentation(doc="Require each product begin with a start codon")), ToolInput(tag="in_all_frames", input_type=Boolean(optional=True), prefix="--all-frames", doc=InputDocumentation(doc="Translate in all frames, keep longest")), ToolInput(tag="in_cds", input_type=Boolean(optional=True), prefix="--cds", doc=InputDocumentation(doc="Write the DNA coding sequence")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Translate_V0_1_0().translate("wdl", allow_empty_container=True)

