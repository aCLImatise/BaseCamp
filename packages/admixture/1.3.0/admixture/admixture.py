from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Admixture_V0_1_0 = CommandToolBuilder(tool="admixture", base_command=["admixture"], inputs=[ToolInput(tag="in_jx", input_type=Boolean(optional=True), prefix="-jX", doc=InputDocumentation(doc=": do computation on X threads")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc=": use random seed X for initialization")), ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="--method", doc=InputDocumentation(doc="=[em|block]     : set method.  block is default")), ToolInput(tag="in_acceleration", input_type=String(optional=True), prefix="--acceleration", doc=InputDocumentation(doc="|\nsqs<X> |\nqn<X>      : set acceleration")), ToolInput(tag="in_set_major_criterion", input_type=String(optional=True), prefix="-C", doc=InputDocumentation(doc=": set major convergence criterion (for point estimation)")), ToolInput(tag="in_set_minor_criterion", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc=": set minor convergence criterion (for bootstrap and CV reestimates)")), ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="[X]      : do bootstrapping [with X replicates]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Admixture_V0_1_0().translate("wdl", allow_empty_container=True)

