from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Dadaist2_Crosstalk_V0_1_0 = CommandToolBuilder(tool="dadaist2_crosstalk", base_command=["dadaist2-crosstalk"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="OTU table filename")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference cleaned OTU table filename")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Cleaned OTU table filename")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print extra information")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print debug information"))], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Crosstalk_V0_1_0().translate("wdl")

