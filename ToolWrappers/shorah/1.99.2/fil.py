from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fil_V0_1_0 = CommandToolBuilder(tool="fil", base_command=["fil"], inputs=[ToolInput(tag="in__sigma_float", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": sigma (FLOAT) [default: 0.01]")), ToolInput(tag="in__maxdepth_int", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=": maxdepth (INT) [default: 10000]")), ToolInput(tag="in__amplicon_mode", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": amplicon mode [default: shotgun]")), ToolInput(tag="in_drop_snvs_are", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": drop SNVs that are adjacent to insertions/deletions (alternate behaviour)")), ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/shorah:1.99.2--py38h032b7f5_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fil_V0_1_0().translate("wdl")

