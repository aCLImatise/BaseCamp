from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String, Int, Boolean

Phyluce_Align_Get_Smilogram_From_Alignments_V0_1_0 = CommandToolBuilder(tool="phyluce_align_get_smilogram_from_alignments", base_command=["phyluce_align_get_smilogram_from_alignments"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing the alignment files")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output filename (without extension - code will add\n.sqlite)")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of cores to use.")), ToolInput(tag="in_smil_ogram", input_type=Boolean(optional=True), prefix="--smilogram", doc=InputDocumentation(doc="Prepare output for smilogram figure"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output filename (without extension - code will add\n.sqlite)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Get_Smilogram_From_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)

