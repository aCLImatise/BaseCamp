from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cleric_V0_1_0 = CommandToolBuilder(tool="cleric", base_command=["cleric"], inputs=[ToolInput(tag="in_aln", input_type=Boolean(optional=True), prefix="--aln", doc=InputDocumentation(doc="Pairwise alignment of reference to target")), ToolInput(tag="in_emit_tool_contract", input_type=Boolean(optional=True), prefix="--emit-tool-contract", doc=InputDocumentation(doc="Emit tool contract.")), ToolInput(tag="in_resolved_tool_contract", input_type=Boolean(optional=True), prefix="--resolved-tool-contract", doc=InputDocumentation(doc="Use args from resolved tool contract.")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Source BAM")), ToolInput(tag="in_ref", input_type=String(), position=1, doc=InputDocumentation(doc="Reference Fasta")), ToolInput(tag="in_target", input_type=String(), position=2, doc=InputDocumentation(doc="Target Fasta")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc="Output BAM"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cleric_V0_1_0().translate("wdl", allow_empty_container=True)

