from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Guppy_To_Json_V0_1_0 = CommandToolBuilder(tool="guppy_to_json", base_command=["guppy", "to_json"], inputs=[ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_to_json", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_place_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sepp:v4.5.0--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_To_Json_V0_1_0().translate("wdl")

