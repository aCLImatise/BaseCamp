from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bam_Soft_Clips_Tab_Py_V0_1_0 = CommandToolBuilder(tool="bam_soft_clips_tab.py", base_command=["bam_soft_clips_tab.py"], inputs=[ToolInput(tag="in_output_tab_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Output tab separated file.")), ToolInput(tag="in_be_quiet_print", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="Be quiet and do not print progress bar (False).")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input BAM file."))], outputs=[ToolOutput(tag="out_output_tab_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_tab_file", type_hint=File()), doc=OutputDocumentation(doc="Output tab separated file."))], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Soft_Clips_Tab_Py_V0_1_0().translate("wdl")

