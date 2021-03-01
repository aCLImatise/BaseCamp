from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Findmotif_V0_1_0 = CommandToolBuilder(tool="findMotif", base_command=["findMotif"], inputs=[ToolInput(tag="in_motif", input_type=String(optional=True), prefix="-motif", doc=InputDocumentation(doc="- search for this specified motif (case ignored, [acgt] only)")), ToolInput(tag="in_chr", input_type=String(optional=True), prefix="-chr", doc=InputDocumentation(doc="- process only this one chrN from the sequence")), ToolInput(tag="in_strand", input_type=Boolean(optional=True), prefix="-strand", doc=InputDocumentation(doc="=<+|-> - limit to only one strand.  Default is both.")), ToolInput(tag="in_bed_output", input_type=Boolean(optional=True), prefix="-bedOutput", doc=InputDocumentation(doc="- output bed format (this is the default)")), ToolInput(tag="in_wig_output", input_type=File(optional=True), prefix="-wigOutput", doc=InputDocumentation(doc="- output wiggle data format instead of bed file"))], outputs=[ToolOutput(tag="out_wig_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_wig_output", type_hint=File()), doc=OutputDocumentation(doc="- output wiggle data format instead of bed file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findmotif_V0_1_0().translate("wdl", allow_empty_container=True)

