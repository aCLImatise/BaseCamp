from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory

Humann2_Split_Stratified_Table_V0_1_0 = CommandToolBuilder(tool="humann2_split_stratified_table", base_command=["humann2_split_stratified_table"], inputs=[ToolInput(tag="in_input", input_type=Int(optional=True), prefix="--input", doc=InputDocumentation(doc="the stratified input table (tsv, tsv.gzip, tsv.bzip2, or biom format)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="the output folder\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="the output folder\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Split_Stratified_Table_V0_1_0().translate("wdl", allow_empty_container=True)

