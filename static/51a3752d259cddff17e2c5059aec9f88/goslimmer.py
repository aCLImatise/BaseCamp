from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Goslimmer_V0_1_0 = CommandToolBuilder(tool="goslimmer", base_command=["goslimmer"], inputs=[ToolInput(tag="in_go", input_type=File(optional=True), prefix="--go", doc=InputDocumentation(doc="Path to the full Gene Ontology OBO or OWL file")), ToolInput(tag="in_slim", input_type=File(optional=True), prefix="--slim", doc=InputDocumentation(doc="Path to the GOslim OBO or OWL file")), ToolInput(tag="in_annotation", input_type=File(optional=True), prefix="--annotation", doc=InputDocumentation(doc="Path to the tabular annotation file (GAF, BLAST2GO or 2-column table format")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to the output GOslim annotation file]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to the output GOslim annotation file]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Goslimmer_V0_1_0().translate("wdl", allow_empty_container=True)

