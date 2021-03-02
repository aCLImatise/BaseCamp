from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Polydot_V0_1_0 = CommandToolBuilder(tool="polydot", base_command=["polydot"], inputs=[ToolInput(tag="in_word_size", input_type=Boolean(optional=True), prefix="-wordsize", doc=InputDocumentation(doc="integer    [6] Word size (Integer 2 or more)")), ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_dump_feat", input_type=Boolean(optional=True), prefix="-dumpfeat", doc=InputDocumentation(doc="toggle     [N] Dump all matches as feature files")), ToolInput(tag="in_gap", input_type=Boolean(optional=True), prefix="-gap", doc=InputDocumentation(doc="integer    [10] This specifies the size of the gap that\nis used to separate the individual dotplots\nin the display. The size is measured in\nresidues, as displayed in the output.\n(Integer 0 or more)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Polydot_V0_1_0().translate("wdl", allow_empty_container=True)

