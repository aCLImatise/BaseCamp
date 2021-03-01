from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Anvi_Oligotype_Linkmers_V0_1_0 = CommandToolBuilder(tool="anvi_oligotype_linkmers", base_command=["anvi-oligotype-linkmers"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Output file of `anvi-report-linkmers`.")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory path for output files\n"))], outputs=[ToolOutput(tag="out_input_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_input_file", type_hint=File()), doc=OutputDocumentation(doc="Output file of `anvi-report-linkmers`.")), ToolOutput(tag="out_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory path for output files\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Oligotype_Linkmers_V0_1_0().translate("wdl", allow_empty_container=True)

