from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Findkm_V0_1_0 = CommandToolBuilder(tool="findkm", base_command=["findkm"], inputs=[ToolInput(tag="in_graph_lb", input_type=Boolean(optional=True), prefix="-graphlb", doc=InputDocumentation(doc="xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="[-outfile]           outfile    [*.findkm] Output file name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findkm_V0_1_0().translate("wdl", allow_empty_container=True)

