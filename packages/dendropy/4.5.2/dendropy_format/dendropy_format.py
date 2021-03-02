from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dendropy_Format_V0_1_0 = CommandToolBuilder(tool="dendropy_format", base_command=["dendropy-format"], inputs=[ToolInput(tag="in_from", input_type=String(optional=True), prefix="--from", doc=InputDocumentation(doc="Format of data source.")), ToolInput(tag="in_data_type", input_type=String(optional=True), prefix="--data-type", doc=InputDocumentation(doc="Type of data")), ToolInput(tag="in_to", input_type=String(optional=True), prefix="--to", doc=InputDocumentation(doc="Format of data source.\n")), ToolInput(tag="in_source_file", input_type=String(), position=0, doc=InputDocumentation(doc="Path to source data."))], outputs=[], container="quay.io/biocontainers/dendropy:4.5.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dendropy_Format_V0_1_0().translate("wdl")

