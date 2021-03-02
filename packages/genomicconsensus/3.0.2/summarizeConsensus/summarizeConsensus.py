from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Summarizeconsensus_V0_1_0 = CommandToolBuilder(tool="summarizeConsensus", base_command=["summarizeConsensus"], inputs=[ToolInput(tag="in_variants_gff", input_type=File(optional=True), prefix="--variantsGff", doc=InputDocumentation(doc="Input variants.gff or variants.gff.gz filename\n(default: None)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output alignment_summary.gff filename (default: None)")), ToolInput(tag="in_resolved_tool_contract", input_type=String(optional=True), prefix="--resolved-tool-contract", doc=InputDocumentation(doc="Run Tool directly from a PacBio Resolved tool contract\n(default: None)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output alignment_summary.gff filename (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summarizeconsensus_V0_1_0().translate("wdl", allow_empty_container=True)

