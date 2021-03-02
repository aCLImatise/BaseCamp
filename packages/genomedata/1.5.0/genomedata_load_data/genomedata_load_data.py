from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Genomedata_Load_Data_V0_1_0 = CommandToolBuilder(tool="genomedata_load_data", base_command=["genomedata-load-data"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print status and diagnostic messages")), ToolInput(tag="in_option_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_data_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_track_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomedata_Load_Data_V0_1_0().translate("wdl")

