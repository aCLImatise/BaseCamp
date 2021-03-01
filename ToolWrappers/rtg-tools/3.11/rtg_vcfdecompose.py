from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Rtg_Vcfdecompose_V0_1_0 = CommandToolBuilder(tool="rtg_vcfdecompose", base_command=["rtg", "vcfdecompose"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="VCF file containing variants to decompose. Use '-' to read\nfrom standard input")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output VCF file name. Use '-' to write to standard output")), ToolInput(tag="in_template", input_type=String(optional=True), prefix="--template", doc=InputDocumentation(doc="SDF of the reference genome the variants are called")), ToolInput(tag="in_break_indels", input_type=String(optional=True), prefix="--break-indels", doc=InputDocumentation(doc="set, peel as many SNPs off an indel as possible")), ToolInput(tag="in_break_mnps", input_type=Boolean(optional=True), prefix="--break-mnps", doc=InputDocumentation(doc="if set, break MNPs into individual SNPs")), ToolInput(tag="in_no_gzip", input_type=Boolean(optional=True), prefix="--no-gzip", doc=InputDocumentation(doc="do not gzip the output")), ToolInput(tag="in_no_header", input_type=Boolean(optional=True), prefix="--no-header", doc=InputDocumentation(doc="prevent VCF header from being written")), ToolInput(tag="in_against", input_type=String(), position=0, doc=InputDocumentation(doc="Sensitivity Tuning"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output VCF file name. Use '-' to write to standard output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Vcfdecompose_V0_1_0().translate("wdl", allow_empty_container=True)

