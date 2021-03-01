from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Isochore_V0_1_0 = CommandToolBuilder(tool="isochore", base_command=["isochore"], inputs=[ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [1000] Window size (Integer 1 or more)")), ToolInput(tag="in_shift", input_type=Boolean(optional=True), prefix="-shift", doc=InputDocumentation(doc="integer    [100] Shift increment (Integer 1 or more)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isochore_V0_1_0().translate("wdl", allow_empty_container=True)

