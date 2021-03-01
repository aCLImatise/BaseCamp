from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fdnainvar_Alignments_V0_1_0 = CommandToolBuilder(tool="fdnainvar_alignments", base_command=["fdnainvar", "alignments"], inputs=[ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Phylip weights file (optional)")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fdnainvar_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)

