from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Gdtools_Mummer2Mask_V0_1_0 = CommandToolBuilder(tool="gdtools_MUMMER2MASK", base_command=["gdtools", "MUMMER2MASK"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output Genome Diff file. (DEFAULT=output.gd)")), ToolInput(tag="in_padding", input_type=Int(optional=True), prefix="--padding", doc=InputDocumentation(doc="Additional padding to add to each end of every MASK region. (DEFAULT=0)")), ToolInput(tag="in_merge", input_type=Int(optional=True), prefix="--merge", doc=InputDocumentation(doc="Merge regions if they are within this distance (before adding padding). (DEFAULT=0)")), ToolInput(tag="in_minimum", input_type=Int(optional=True), prefix="--minimum", doc=InputDocumentation(doc="Minimum size of a region after padding and merging to remain in the MASK list. (DEFAULT=0)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output Genome Diff file. (DEFAULT=output.gd)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Mummer2Mask_V0_1_0().translate("wdl", allow_empty_container=True)

