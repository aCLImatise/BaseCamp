from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Iu_Visualize_Qual_Dicts_V0_1_0 = CommandToolBuilder(tool="iu_visualize_qual_dicts", base_command=["iu-visualize-qual-dicts"], inputs=[ToolInput(tag="in_prefix__prefixprefix", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="PREFIX, --prefix FILE PREFIX\nPrefix for the output file(s)")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="Title to appear at the top of the figure")), ToolInput(tag="in_split_tiles", input_type=Boolean(optional=True), prefix="--split-tiles", doc=InputDocumentation(doc="When set, quality curves will be shown separately for\neach tile\n")), ToolInput(tag="in_prefix", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_prefix__prefixprefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix__prefixprefix", type_hint=File()), doc=OutputDocumentation(doc="PREFIX, --prefix FILE PREFIX\nPrefix for the output file(s)"))], container="quay.io/biocontainers/illumina-utils:2.11--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Visualize_Qual_Dicts_V0_1_0().translate("wdl")

