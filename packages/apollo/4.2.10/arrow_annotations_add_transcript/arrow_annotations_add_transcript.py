from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Arrow_Annotations_Add_Transcript_V0_1_0 = CommandToolBuilder(tool="arrow_annotations_add_transcript", base_command=["arrow", "annotations", "add_transcript"], inputs=[ToolInput(tag="in_transcript", input_type=String(optional=True), prefix="--transcript", doc=InputDocumentation(doc="Transcript data")), ToolInput(tag="in_suppress_history", input_type=Boolean(optional=True), prefix="--suppress_history", doc=InputDocumentation(doc="Suppress the history of this operation")), ToolInput(tag="in_suppress_events", input_type=Boolean(optional=True), prefix="--suppress_events", doc=InputDocumentation(doc="Suppress instant update of the user interface")), ToolInput(tag="in_organism", input_type=String(optional=True), prefix="--organism", doc=InputDocumentation(doc="Organism Common Name")), ToolInput(tag="in_sequence", input_type=String(optional=True), prefix="--sequence", doc=InputDocumentation(doc="Sequence Name"))], outputs=[], container="quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Annotations_Add_Transcript_V0_1_0().translate("wdl")

