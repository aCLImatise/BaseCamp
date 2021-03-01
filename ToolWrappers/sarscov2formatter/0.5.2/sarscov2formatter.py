from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Sarscov2Formatter_V0_1_0 = CommandToolBuilder(tool="sarscov2formatter", base_command=["sarscov2formatter"], inputs=[ToolInput(tag="in_alignment", input_type=File(optional=True), prefix="--alignment", doc=InputDocumentation(doc="Mulitple sequence alignment file")), ToolInput(tag="in_metadata", input_type=File(optional=True), prefix="--metadata", doc=InputDocumentation(doc="Metadata source (Use 'ncbi' if using NCBI SARS-CoV-2\ndata, otherwise supply tabular file of the correct\nformat)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sarscov2Formatter_V0_1_0().translate("wdl", allow_empty_container=True)

