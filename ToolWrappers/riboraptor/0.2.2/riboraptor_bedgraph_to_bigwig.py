from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Riboraptor_Bedgraph_To_Bigwig_V0_1_0 = CommandToolBuilder(tool="riboraptor_bedgraph_to_bigwig", base_command=["riboraptor", "bedgraph-to-bigwig"], inputs=[ToolInput(tag="in_bed_graph", input_type=File(optional=True), prefix="--bedgraph", doc=InputDocumentation(doc="Path to bedgraph file (optional)")), ToolInput(tag="in_sizes", input_type=File(optional=True), prefix="--sizes", doc=InputDocumentation(doc="Path to genome chrom.sizes file  [required]")), ToolInput(tag="in_save_to", input_type=File(optional=True), prefix="--saveto", doc=InputDocumentation(doc="Path to write bigwig output  [required]"))], outputs=[ToolOutput(tag="out_save_to", output_type=File(optional=True), selector=InputSelector(input_to_select="in_save_to", type_hint=File()), doc=OutputDocumentation(doc="Path to write bigwig output  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Riboraptor_Bedgraph_To_Bigwig_V0_1_0().translate("wdl", allow_empty_container=True)

