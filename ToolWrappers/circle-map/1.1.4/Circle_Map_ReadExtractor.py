from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Circle_Map_Readextractor_V0_1_0 = CommandToolBuilder(tool="Circle_Map_ReadExtractor", base_command=["Circle-Map", "ReadExtractor"], inputs=[ToolInput(tag="in_input_query_name", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input: query name sorted bam file")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="Ouput: Reads indicating circular DNA structural")), ToolInput(tag="in_quality", input_type=Boolean(optional=True), prefix="--quality", doc=InputDocumentation(doc="bwa-mem mapping quality cutoff. Default value 10")), ToolInput(tag="in_no_discordant", input_type=Boolean(optional=True), prefix="--nodiscordant", doc=InputDocumentation(doc="Turn off discordant (R2F1 oriented) read extraction")), ToolInput(tag="in_no_soft_clipped", input_type=Boolean(optional=True), prefix="--nosoftclipped", doc=InputDocumentation(doc="Turn off soft-clipped read extraction")), ToolInput(tag="in_no_hard_clipped", input_type=Boolean(optional=True), prefix="--nohardclipped", doc=InputDocumentation(doc="Turn off hard-clipped read extraction")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose level, 1=error,2=warning, 3=message. Default=3")), ToolInput(tag="in_variants", input_type=String(), position=0, doc=InputDocumentation(doc="-dir , --directory    Working directory, default is the working directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circle_Map_Readextractor_V0_1_0().translate("wdl", allow_empty_container=True)

