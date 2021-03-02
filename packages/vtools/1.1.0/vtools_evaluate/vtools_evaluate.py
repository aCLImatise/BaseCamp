from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float, Int

Vtools_Evaluate_V0_1_0 = CommandToolBuilder(tool="vtools_evaluate", base_command=["vtools-evaluate"], inputs=[ToolInput(tag="in_call_vcf", input_type=File(optional=True), prefix="--call-vcf", doc=InputDocumentation(doc="Path to VCF with calls to be evaluated\n[required]")), ToolInput(tag="in_positive_vcf", input_type=File(optional=True), prefix="--positive-vcf", doc=InputDocumentation(doc="Path to VCF with known calls  [required]")), ToolInput(tag="in_call_samples", input_type=String(optional=True), prefix="--call-samples", doc=InputDocumentation(doc="Sample(s) in call-vcf to consider. May be\ncalled multiple times  [required]")), ToolInput(tag="in_positive_samples", input_type=String(optional=True), prefix="--positive-samples", doc=InputDocumentation(doc="Sample(s) in positive-vcf to consider. May be\ncalled multiple times  [required]")), ToolInput(tag="in_stats", input_type=File(optional=True), prefix="--stats", doc=InputDocumentation(doc="Path to output stats json file")), ToolInput(tag="in_discordant_vcf", input_type=File(optional=True), prefix="--discordant-vcf", doc=InputDocumentation(doc="Path to output the discordant vcf file")), ToolInput(tag="in_min_qual", input_type=Float(optional=True), prefix="--min-qual", doc=InputDocumentation(doc="Minimum quality of variants to consider")), ToolInput(tag="in_min_depth", input_type=Int(optional=True), prefix="--min-depth", doc=InputDocumentation(doc="Minimum depth of variants to consider"))], outputs=[ToolOutput(tag="out_stats", output_type=File(optional=True), selector=InputSelector(input_to_select="in_stats", type_hint=File()), doc=OutputDocumentation(doc="Path to output stats json file")), ToolOutput(tag="out_discordant_vcf", output_type=File(optional=True), selector=InputSelector(input_to_select="in_discordant_vcf", type_hint=File()), doc=OutputDocumentation(doc="Path to output the discordant vcf file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Evaluate_V0_1_0().translate("wdl", allow_empty_container=True)

