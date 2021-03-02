from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Circexplorer2_Parse_V0_1_0 = CommandToolBuilder(tool="CIRCexplorer2_parse", base_command=["CIRCexplorer2", "parse"], inputs=[ToolInput(tag="in_aligner_tophatfusion_star", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Aligner (TopHat-Fusion, STAR, MapSplice, BWA, segemehl).")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Output file.\n[default: back_spliced_junction.bed]")), ToolInput(tag="in_pe", input_type=Boolean(optional=True), prefix="--pe", doc=InputDocumentation(doc="Parse paired-end alignment file (only for TopHat-Fusion). If this is set, then -f is set automatically.")), ToolInput(tag="in_statistics_fragment_numbers", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Statistics fragment numbers rather than read numbers.")), ToolInput(tag="in_fusion", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_bed", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bed", type_hint=File()), doc=OutputDocumentation(doc="Output file.\n[default: back_spliced_junction.bed]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circexplorer2_Parse_V0_1_0().translate("wdl", allow_empty_container=True)

