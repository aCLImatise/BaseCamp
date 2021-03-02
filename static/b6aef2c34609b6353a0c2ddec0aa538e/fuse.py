from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fuse_V0_1_0 = CommandToolBuilder(tool="fuse", base_command=["fuse"], inputs=[ToolInput(tag="in_min_coverage", input_type=Boolean(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="Minimal coverage to call a position. [50]")), ToolInput(tag="in_emit_tool_contract", input_type=Boolean(optional=True), prefix="--emit-tool-contract", doc=InputDocumentation(doc="Emit tool contract.")), ToolInput(tag="in_resolved_tool_contract", input_type=Boolean(optional=True), prefix="--resolved-tool-contract", doc=InputDocumentation(doc="Use args from resolved tool contract.")), ToolInput(tag="in_source", input_type=String(), position=0, doc=InputDocumentation(doc="Source BAM or DataSet XML file.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Output fasta file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fuse_V0_1_0().translate("wdl", allow_empty_container=True)

