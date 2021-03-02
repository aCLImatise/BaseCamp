from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Detectextremedepth_V0_1_0 = CommandToolBuilder(tool="detectExtremeDepth", base_command=["detectExtremeDepth"], inputs=[ToolInput(tag="in_bigwig", input_type=Boolean(optional=True), prefix="--bigwig", doc=InputDocumentation(doc="[file]     BigWig file path.")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="[dir]      Folder to send output to\n- named as input file with '.tab' extension")), ToolInput(tag="in_ref", input_type=Boolean(optional=True), prefix="--ref", doc=InputDocumentation(doc="[str]         Restrict to this reference (mainly for testing)\n- without 'chr' prefix, will test with and without the 'chr' for you.\n- if '-r' defined '.{val}' will prefix '.bed'")), ToolInput(tag="in_sd", input_type=Boolean(optional=True), prefix="--sd", doc=InputDocumentation(doc="[int]          Number of standard deviations above mean for group to be included [12].")), ToolInput(tag="in_decode", input_type=Boolean(optional=True), prefix="--decode", doc=InputDocumentation(doc="[str]      Decode -r to chromosome names (do not include 'chr')\ne.g. -d 23:X -d 24:Y -d 25:MT"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Detectextremedepth_V0_1_0().translate("wdl", allow_empty_container=True)

