from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dotpath_V0_1_0 = CommandToolBuilder(tool="dotpath", base_command=["dotpath"], inputs=[ToolInput(tag="in_word_size", input_type=Boolean(optional=True), prefix="-wordsize", doc=InputDocumentation(doc="integer    [4] Word size (Integer 2 or more)")), ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_overlaps", input_type=Boolean(optional=True), prefix="-overlaps", doc=InputDocumentation(doc="boolean    [N] Displays the overlapping matches (in\nred) as well as the minimal set of\nnon-overlapping matches"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dotpath_V0_1_0().translate("wdl", allow_empty_container=True)

