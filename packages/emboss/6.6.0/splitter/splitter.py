from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Splitter_V0_1_0 = CommandToolBuilder(tool="splitter", base_command=["splitter"], inputs=[ToolInput(tag="in_size", input_type=Boolean(optional=True), prefix="-size", doc=InputDocumentation(doc="integer    [10000] Size to split at (Integer 1 or more)")), ToolInput(tag="in_overlap", input_type=Boolean(optional=True), prefix="-overlap", doc=InputDocumentation(doc="integer    [0] Overlap between split sequences (Integer\n0 or more)")), ToolInput(tag="in_feature", input_type=Boolean(optional=True), prefix="-feature", doc=InputDocumentation(doc="boolean    [N] Use feature information")), ToolInput(tag="in_add_overlap", input_type=Boolean(optional=True), prefix="-addoverlap", doc=InputDocumentation(doc="boolean    [N] Include overlap in output sequence size"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitter_V0_1_0().translate("wdl", allow_empty_container=True)

