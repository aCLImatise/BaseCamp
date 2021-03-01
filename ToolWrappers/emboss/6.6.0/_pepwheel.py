from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Pepwheel_V0_1_0 = CommandToolBuilder(tool="_pepwheel", base_command=["_pepwheel"], inputs=[ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_steps", input_type=Boolean(optional=True), prefix="-steps", doc=InputDocumentation(doc="integer    [18] The number of residues plotted per turn\nis this value divided by the 'turns' value.\n(Integer from 2 to 100)")), ToolInput(tag="in_turns", input_type=Boolean(optional=True), prefix="-turns", doc=InputDocumentation(doc="integer    [5] The number of residues plotted per turn\nis the 'steps' value divided by this value.\n(Integer from 1 to 100)")), ToolInput(tag="in_amphipathic", input_type=Boolean(optional=True), prefix="-amphipathic", doc=InputDocumentation(doc="toggle     If this is true then the residues ACFGILMVWY\nare marked as squares and all other\nresidues are unmarked. This overrides any\nother markup that you may have specified\nusing the qualifiers '-squares', '-diamonds'\nand '-octags'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pepwheel_V0_1_0().translate("wdl", allow_empty_container=True)

