from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Plotorf_V0_1_0 = CommandToolBuilder(tool="_plotorf", base_command=["_plotorf"], inputs=[ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_start", input_type=Boolean(optional=True), prefix="-start", doc=InputDocumentation(doc="string     [ATG] Start codons (Any string)")), ToolInput(tag="in_stop", input_type=Boolean(optional=True), prefix="-stop", doc=InputDocumentation(doc="string     [TAA,TAG,TGA] Stop codons (Any string)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Plotorf_V0_1_0().translate("wdl", allow_empty_container=True)

