from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Blockclust_V0_1_0 = CommandToolBuilder(tool="blockclust", base_command=["blockclust"], inputs=[ToolInput(tag="in_accept", input_type=Boolean(optional=True), prefix="--accept", doc=InputDocumentation(doc="[accept annotations]")), ToolInput(tag="in_reject", input_type=Boolean(optional=True), prefix="--reject", doc=InputDocumentation(doc="[reject annotations]")), ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="--config", doc=InputDocumentation(doc="[config file]")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="[output dir]")), ToolInput(tag="in_block_clust", input_type=String(), position=0, doc=InputDocumentation(doc="-i, --in       [blockbuster output]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blockclust_V0_1_0().translate("wdl", allow_empty_container=True)

