from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Lofreq_Indelqual_V0_1_0 = CommandToolBuilder(tool="lofreq_indelqual", base_command=["lofreq", "indelqual"], inputs=[ToolInput(tag="in_uniform", input_type=Int(), prefix="--uniform", doc=InputDocumentation(doc="Add this indel quality uniformly to all bases.\nUse two comma separated values to specify\ninsertion and deletion quality separately.\n(clashes with --dindel)")), ToolInput(tag="in_din_del", input_type=Boolean(optional=True), prefix="--dindel", doc=InputDocumentation(doc="Add Dindel's indel qualities (Illumina specific)\n(clashes with -u; needs --ref)")), ToolInput(tag="in_ref", input_type=Boolean(optional=True), prefix="--ref", doc=InputDocumentation(doc="Reference sequence used for mapping\n(Only required for --dindel)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output BAM file [- = stdout = default]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BAM file [- = stdout = default]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lofreq_Indelqual_V0_1_0().translate("wdl", allow_empty_container=True)

