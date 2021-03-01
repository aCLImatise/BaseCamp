from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Wobble_V0_1_0 = CommandToolBuilder(tool="_wobble", base_command=["_wobble"], inputs=[ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [30] Window size in codons (Integer 1 or\nmore)")), ToolInput(tag="in_bases", input_type=Boolean(optional=True), prefix="-bases", doc=InputDocumentation(doc="string     [GC] Bases used (Any string)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Wobble_V0_1_0().translate("wdl", allow_empty_container=True)

