from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Pepnet_V0_1_0 = CommandToolBuilder(tool="_pepnet", base_command=["_pepnet"], inputs=[ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_amphipathic", input_type=Boolean(optional=True), prefix="-amphipathic", doc=InputDocumentation(doc="toggle     If this is true then the residues ACFGILMVWY\nare marked as squares and all other\nresidues are unmarked. This overrides any\nother markup that you may have specified\nusing the qualifiers '-squares', '-diamonds'\nand '-octags'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pepnet_V0_1_0().translate("wdl", allow_empty_container=True)

