from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Run_Tasmanian_V0_1_0 = CommandToolBuilder(tool="run_tasmanian", base_command=["run_tasmanian"], inputs=[ToolInput(tag="in_unmask_genome", input_type=Boolean(optional=True), prefix="--unmask-genome", doc=InputDocumentation(doc="(convert masked bases to upper case and include them in the calculations - default=False)")), ToolInput(tag="in_base_quality", input_type=Boolean(optional=True), prefix="--base-quality", doc=InputDocumentation(doc="(default=20)")), ToolInput(tag="in_filter_in_del", input_type=Boolean(optional=True), prefix="--filter-indel", doc=InputDocumentation(doc="(exclude reads with indels default=False)")), ToolInput(tag="in_filter_length", input_type=Boolean(optional=True), prefix="--filter-length", doc=InputDocumentation(doc="(include only reads with x,y range of lengths, default=0, 76)")), ToolInput(tag="in_soft_clip_bypass", input_type=Boolean(optional=True), prefix="--soft-clip-bypass", doc=InputDocumentation(doc="(Decide when softclipped base is correct(0). Don't use these bases(1). Force use them(2).  default=0)")), ToolInput(tag="in_mapping_quality", input_type=Boolean(optional=True), prefix="--mapping-quality", doc=InputDocumentation(doc="(minimum allowed mapping quality -defailt=0)")), ToolInput(tag="in_output_prefix", input_type=Boolean(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="(use this prefix for the output and logging files)")), ToolInput(tag="in_confidence", input_type=Boolean(optional=True), prefix="--confidence", doc=InputDocumentation(doc="(number of bases in the complement region of the read)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="(create a log file)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Tasmanian_V0_1_0().translate("wdl", allow_empty_container=True)

