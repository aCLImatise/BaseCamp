from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Tqsexport_Py_V0_1_0 = CommandToolBuilder(tool="TQSexport.py", base_command=["TQSexport.py"], inputs=[ToolInput(tag="in_export", input_type=File(optional=True), prefix="--export", doc=InputDocumentation(doc="=EXPORTFILE\nIllumina export file - Output format from the Genome\nAnalyzer")), ToolInput(tag="in_phred", input_type=Int(optional=True), prefix="--Phred", doc=InputDocumentation(doc="threshold=THRESHOLD\nBase intensity threshold value (Phred quality scores 0\nto 40, default=10)")), ToolInput(tag="in_consec", input_type=Int(optional=True), prefix="--consec", doc=InputDocumentation(doc="Minimum number of consecutive bases passing threshold\nvalues (default=20)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Runs in Verbose mode."))], outputs=[ToolOutput(tag="out_export", output_type=File(optional=True), selector=InputSelector(input_to_select="in_export", type_hint=File()), doc=OutputDocumentation(doc="=EXPORTFILE\nIllumina export file - Output format from the Genome\nAnalyzer"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tqsexport_Py_V0_1_0().translate("wdl", allow_empty_container=True)

