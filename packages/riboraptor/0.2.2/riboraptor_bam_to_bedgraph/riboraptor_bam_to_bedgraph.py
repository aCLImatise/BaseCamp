from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Riboraptor_Bam_To_Bedgraph_V0_1_0 = CommandToolBuilder(tool="riboraptor_bam_to_bedgraph", base_command=["riboraptor", "bam-to-bedgraph"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Path to BAM file  [required]")), ToolInput(tag="in_strand", input_type=Boolean(optional=True), prefix="--strand", doc=InputDocumentation(doc="[+|-|both]         Count from strand of this type only")), ToolInput(tag="in_end_type", input_type=Boolean(optional=True), prefix="--end_type", doc=InputDocumentation(doc="[5prime|3prime|either]\nPileup 5' / 3'/ either ends")), ToolInput(tag="in_save_to", input_type=File(optional=True), prefix="--saveto", doc=InputDocumentation(doc="Path to write bedgraph output"))], outputs=[ToolOutput(tag="out_save_to", output_type=File(optional=True), selector=InputSelector(input_to_select="in_save_to", type_hint=File()), doc=OutputDocumentation(doc="Path to write bedgraph output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Riboraptor_Bam_To_Bedgraph_V0_1_0().translate("wdl", allow_empty_container=True)

