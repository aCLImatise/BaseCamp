from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Merge_Contigs_V0_1_0 = CommandToolBuilder(tool="merge_contigs", base_command=["merge-contigs"], inputs=[ToolInput(tag="in_output_outprefixmali_file", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="Output the <out-prefix>.mali file")), ToolInput(tag="in_coords_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cco_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bank_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_outprefixmali_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_outprefixmali_file", type_hint=File()), doc=OutputDocumentation(doc="Output the <out-prefix>.mali file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Contigs_V0_1_0().translate("wdl", allow_empty_container=True)

