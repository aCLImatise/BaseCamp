from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Directory, Int

Ngs_Disambiguate_V0_1_0 = CommandToolBuilder(tool="ngs_disambiguate", base_command=["ngs_disambiguate"], inputs=[ToolInput(tag="in_no_sort", input_type=Boolean(optional=True), prefix="--no-sort", doc=InputDocumentation(doc="(Deprecated option for backwards compatibility)")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="(required)  Sample ID or name used as prefix. Do not include .bam")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="(required)  Output directory")), ToolInput(tag="in_aligner", input_type=Int(optional=True), prefix="--aligner", doc=InputDocumentation(doc="Aligner option {tophat(default),hisat2,bwa,star}")), ToolInput(tag="in_a", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="(required)  Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngs_Disambiguate_V0_1_0().translate("wdl", allow_empty_container=True)

