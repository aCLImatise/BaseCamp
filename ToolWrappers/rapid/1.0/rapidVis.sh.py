from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rapidvis_Sh_V0_1_0 = CommandToolBuilder(tool="rapidVis.sh", base_command=["rapidVis.sh"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="=/path_to_output_directory/ : path to the output directory, directory will be created if non-existent")), ToolInput(tag="in_an_not", input_type=File(optional=True), prefix="--annot", doc=InputDocumentation(doc=": bed file with regions that should be visualised (Not required for comparison plots)")), ToolInput(tag="in_rapid", input_type=File(optional=True), prefix="--rapid", doc=InputDocumentation(doc="/ : set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/) or put into PATH variable"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="=/path_to_output_directory/ : path to the output directory, directory will be created if non-existent"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rapidvis_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

