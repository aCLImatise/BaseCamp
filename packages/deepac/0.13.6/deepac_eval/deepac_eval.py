from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Deepac_Eval_V0_1_0 = CommandToolBuilder(tool="deepac_eval", base_command=["deepac", "eval"], inputs=[ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="Species-wise evaluation.")), ToolInput(tag="in_reads", input_type=String(optional=True), prefix="--reads", doc=InputDocumentation(doc="Read-wise evaluation.")), ToolInput(tag="in_ensemble", input_type=String(optional=True), prefix="--ensemble", doc=InputDocumentation(doc="Simple ensemble evaluation.\n"))], outputs=[], container="quay.io/biocontainers/deepac:0.13.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Eval_V0_1_0().translate("wdl")

