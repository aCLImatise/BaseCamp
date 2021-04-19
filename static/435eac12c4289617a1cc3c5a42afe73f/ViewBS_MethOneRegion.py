from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, File, String

Viewbs_Methoneregion_V0_1_0 = CommandToolBuilder(tool="ViewBS_MethOneRegion", base_command=["ViewBS", "MethOneRegion"], inputs=[ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="--region", doc=InputDocumentation(doc="[required]\n- One target region. [chr1:100-200]")), ToolInput(tag="in_min_depth", input_type=Boolean(optional=True), prefix="--minDepth", doc=InputDocumentation(doc="[optional]\n- Minimum read depth for calculating methylation level. [default: 5]")), ToolInput(tag="in_maxdepth", input_type=Boolean(optional=True), prefix="--maxDepth", doc=InputDocumentation(doc="[optional]\n- Maximum read depth for calculating methylation level. [default: 10000]")), ToolInput(tag="in_flank", input_type=Boolean(optional=True), prefix="--flank", doc=InputDocumentation(doc="[optional]\n- Extend the provided reigons to the flanking regions. [default: 400]")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="[optional]\n- Output folder. [Default: ./]")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="[optional]\n- Provide prefix for the output file. [Default: MethOneRegion]\n")), ToolInput(tag="in_verbose", input_type=String(), position=0, doc=InputDocumentation(doc="- Suppress extended information or not. [Default: TRUE]"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="[optional]\n- Output folder. [Default: ./]")), ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="[optional]\n- Provide prefix for the output file. [Default: MethOneRegion]\n"))], container="quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Viewbs_Methoneregion_V0_1_0().translate("wdl")

