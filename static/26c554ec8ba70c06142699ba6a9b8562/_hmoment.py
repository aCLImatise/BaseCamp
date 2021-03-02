from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Hmoment_V0_1_0 = CommandToolBuilder(tool="_hmoment", base_command=["_hmoment"], inputs=[ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [10] Window (Any integer value)")), ToolInput(tag="in_a_angle", input_type=Boolean(optional=True), prefix="-aangle", doc=InputDocumentation(doc="integer    [100] Alpha helix angle (degrees) (Any\ninteger value)")), ToolInput(tag="in_bangle", input_type=Boolean(optional=True), prefix="-bangle", doc=InputDocumentation(doc="integer    [160] Beta sheet angle (degrees) (Any\ninteger value)")), ToolInput(tag="in_baseline", input_type=Boolean(optional=True), prefix="-baseline", doc=InputDocumentation(doc="float      [0.35] Graph marker line (Any numeric value)")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="-plot", doc=InputDocumentation(doc="toggle     [N] Produce graphic")), ToolInput(tag="in_double", input_type=Boolean(optional=True), prefix="-double", doc=InputDocumentation(doc="boolean    [N] Plot two graphs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Hmoment_V0_1_0().translate("wdl", allow_empty_container=True)

