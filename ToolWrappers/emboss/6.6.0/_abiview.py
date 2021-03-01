from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

_Abiview_V0_1_0 = CommandToolBuilder(tool="_abiview", base_command=["_abiview"], inputs=[ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_start_base", input_type=Boolean(optional=True), prefix="-startbase", doc=InputDocumentation(doc="integer    [0] First base to report or display (Integer\n0 or more)")), ToolInput(tag="in_end_base", input_type=Boolean(optional=True), prefix="-endbase", doc=InputDocumentation(doc="integer    [0] Last sequence base to report or display.\nIf the default is set to zero then the\nvalue of this is taken as the maximum number\nof bases. (Any integer value)")), ToolInput(tag="in_y_ticks", input_type=Boolean(optional=True), prefix="-yticks", doc=InputDocumentation(doc="boolean    [N] Display y-axis ticks")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [40] Sequence display window size (Any\ninteger value)")), ToolInput(tag="in_string_base_graphs", input_type=Boolean(optional=True), prefix="-bases", doc=InputDocumentation(doc="string     [GATC] Base graphs to be displayed (Any\nstring, matching regular expression\n/[GATC]+/)")), ToolInput(tag="in_separate", input_type=Boolean(optional=True), prefix="-separate", doc=InputDocumentation(doc="boolean    [N] Separate the trace graphs for the 4")), ToolInput(tag="in_general_qualifiers", input_type=String(), position=0, doc=InputDocumentation(doc="General qualifiers:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Abiview_V0_1_0().translate("wdl", allow_empty_container=True)

