from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Add_Genename_V0_1_0 = CommandToolBuilder(tool="add_genename", base_command=["add-genename"], inputs=[ToolInput(tag="in_directory_output_gtf", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc=": the directory for output gtf files (default: ./)"))], outputs=[ToolOutput(tag="out_directory_output_gtf", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_output_gtf", type_hint=File()), doc=OutputDocumentation(doc=": the directory for output gtf files (default: ./)"))], container="quay.io/biocontainers/psiclass:1.0.2--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Genename_V0_1_0().translate("wdl")

