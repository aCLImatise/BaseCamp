from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Bp_Composite_Ld_Pl_V0_1_0 = CommandToolBuilder(tool="bp_composite_LD.pl", base_command=["bp_composite_LD.pl"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="format (prettybase or CSV)")), ToolInput(tag="in_sort_by_ld", input_type=Int(optional=True), prefix="--sortbyld", doc=InputDocumentation(doc="see data sorted by LD instead of just all the site1/site2")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="filename, otherwise will print to STDOUT")), ToolInput(tag="in_no_convert", input_type=Boolean(optional=True), prefix="--noconvert", doc=InputDocumentation(doc="(applicable for prettybase format file only) if specified")), ToolInput(tag="in_description", input_type=String(), position=0, doc=InputDocumentation(doc="This a script which allows an easy way to calculate composite LD.")), ToolInput(tag="in_options", input_type=String(), position=1, doc=InputDocumentation(doc="-i or --in filename"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Composite_Ld_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

