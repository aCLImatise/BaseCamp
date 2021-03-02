from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Virmet_Wolfpack_V0_1_0 = CommandToolBuilder(tool="virmet_wolfpack", base_command=["virmet", "wolfpack"], inputs=[ToolInput(tag="in_run", input_type=Directory(optional=True), prefix="--run", doc=InputDocumentation(doc="Miseq run directory")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="single fastq file")), ToolInput(tag="in_vir_met", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_wolfpack", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Virmet_Wolfpack_V0_1_0().translate("wdl", allow_empty_container=True)

