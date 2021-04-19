from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Referenceseeker_Db_Init_V0_1_0 = CommandToolBuilder(tool="referenceseeker_db_init", base_command=["referenceseeker_db", "init"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="output directory (default = current working directory)")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Name of the new ReferenceSeeker database"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output directory (default = current working directory)"))], container="quay.io/biocontainers/referenceseeker:1.7.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Referenceseeker_Db_Init_V0_1_0().translate("wdl")

