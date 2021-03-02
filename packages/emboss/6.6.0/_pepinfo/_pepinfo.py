from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Pepinfo_V0_1_0 = CommandToolBuilder(tool="_pepinfo", base_command=["_pepinfo"], inputs=[ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_aa_properties", input_type=Boolean(optional=True), prefix="-aaproperties", doc=InputDocumentation(doc="datafile   [Eaa_properties.dat] Amino acid chemical\nclasses data file")), ToolInput(tag="in_aa_hydropathy", input_type=Boolean(optional=True), prefix="-aahydropathy", doc=InputDocumentation(doc="datafile   [Eaa_hydropathy.dat] Amino acid hydropathy\nvalues data file")), ToolInput(tag="in_h_window", input_type=Boolean(optional=True), prefix="-hwindow", doc=InputDocumentation(doc="integer    [9] Window size for hydropathy averaging\n(Integer 1 or more)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pepinfo_V0_1_0().translate("wdl", allow_empty_container=True)

