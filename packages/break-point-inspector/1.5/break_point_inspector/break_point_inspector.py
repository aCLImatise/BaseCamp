from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Break_Point_Inspector_V0_1_0 = CommandToolBuilder(tool="break_point_inspector", base_command=["break-point-inspector"], inputs=[ToolInput(tag="in_contamination_fraction", input_type=String(optional=True), prefix="-contamination_fraction", doc=InputDocumentation(doc="fraction of allowable normal support per\ntumor support read")), ToolInput(tag="in_output_vcf", input_type=File(optional=True), prefix="-output_vcf", doc=InputDocumentation(doc="VCF output file (optional)")), ToolInput(tag="in_proximity", input_type=Int(optional=True), prefix="-proximity", doc=InputDocumentation(doc="distance to scan around breakpoint\n(optional, default=500)")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="-ref", doc=InputDocumentation(doc="the Reference BAM (required)")), ToolInput(tag="in_ref_slice", input_type=String(optional=True), prefix="-ref_slice", doc=InputDocumentation(doc="the sliced Reference BAM to output\n(optional)")), ToolInput(tag="in_tumor", input_type=String(optional=True), prefix="-tumor", doc=InputDocumentation(doc="the Tumor BAM (required)")), ToolInput(tag="in_tumor_slice", input_type=String(optional=True), prefix="-tumor_slice", doc=InputDocumentation(doc="the sliced Tumor BAM to output (optional)")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="-vcf", doc=InputDocumentation(doc="Manta VCF file to batch inspect\n(required)\n")), ToolInput(tag="in_arg", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_vcf", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_vcf", type_hint=File()), doc=OutputDocumentation(doc="VCF output file (optional)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Break_Point_Inspector_V0_1_0().translate("wdl", allow_empty_container=True)

