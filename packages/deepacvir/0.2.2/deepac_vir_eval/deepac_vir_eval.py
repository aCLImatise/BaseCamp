from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Deepac_Vir_Eval_V0_1_0 = CommandToolBuilder(tool="deepac_vir_eval", base_command=["deepac-vir", "eval"], inputs=[ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="Species-wise evaluation.")), ToolInput(tag="in_reads", input_type=String(optional=True), prefix="--reads", doc=InputDocumentation(doc="Read-wise evaluation.")), ToolInput(tag="in_ensemble", input_type=String(optional=True), prefix="--ensemble", doc=InputDocumentation(doc="Simple ensemble evaluation.\n")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_eval", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/deepacvir:0.2.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Vir_Eval_V0_1_0().translate("wdl")

