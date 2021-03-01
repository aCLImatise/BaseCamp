from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Motif_Shuffle_Columns_V0_1_0 = CommandToolBuilder(tool="motif_shuffle_columns", base_command=["motif-shuffle-columns"], inputs=[ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="-seed", doc=InputDocumentation(doc="pseudo-random number generator seed")), ToolInput(tag="in_motif_db", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motif_Shuffle_Columns_V0_1_0().translate("wdl", allow_empty_container=True)

