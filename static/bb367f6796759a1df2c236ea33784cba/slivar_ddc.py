from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Slivar_Ddc_V0_1_0 = CommandToolBuilder(tool="slivar_ddc", base_command=["slivar", "ddc"], inputs=[ToolInput(tag="in_chrom", input_type=Int(optional=True), prefix="--chrom", doc=InputDocumentation(doc="limit to this chromosome only. use '-3' for all chromosomes (in the case of exome data) (default: chr15)")), ToolInput(tag="in_info_fields", input_type=String(optional=True), prefix="--info-fields", doc=InputDocumentation(doc="comma-delimited list of info fields")), ToolInput(tag="in_fmt_fields", input_type=String(optional=True), prefix="--fmt-fields", doc=InputDocumentation(doc="comma-delimited list of sample fields")), ToolInput(tag="in_html", input_type=File(optional=True), prefix="--html", doc=InputDocumentation(doc="path to output file (default: slivar-ddc.html)")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="ped"))], outputs=[ToolOutput(tag="out_html", output_type=File(optional=True), selector=InputSelector(input_to_select="in_html", type_hint=File()), doc=OutputDocumentation(doc="path to output file (default: slivar-ddc.html)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slivar_Ddc_V0_1_0().translate("wdl", allow_empty_container=True)

