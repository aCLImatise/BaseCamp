from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Perbase_Merge_Adjacent_V0_1_0 = CommandToolBuilder(tool="perbase_merge_adjacent", base_command=["perbase", "merge-adjacent"], inputs=[ToolInput(tag="in_no_header", input_type=Boolean(optional=True), prefix="--no-header", doc=InputDocumentation(doc="Indicate if the input file does not have a header")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="The output location, defaults to STDOUT")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/perbase:0.6.3--h35a96ae_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Perbase_Merge_Adjacent_V0_1_0().translate("wdl")

