from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Add_Tradis_Tags_V0_1_0 = CommandToolBuilder(tool="add_tradis_tags", base_command=["add_tradis_tags"], inputs=[ToolInput(tag="in_bam_file_tradis", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=": bam file with tradis tags")), ToolInput(tag="in_output_bam_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output BAM name (optional. default: <file>.tr.bam)")), ToolInput(tag="in_verbose_debugging_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": verbose debugging output")), ToolInput(tag="in_add_tags", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_bam_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bam_name", type_hint=File()), doc=OutputDocumentation(doc=": output BAM name (optional. default: <file>.tr.bam)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Tradis_Tags_V0_1_0().translate("wdl", allow_empty_container=True)

