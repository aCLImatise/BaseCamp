from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Gvcf2Bed_V0_1_0 = CommandToolBuilder(tool="gvcf2bed", base_command=["gvcf2bed"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input gVCF")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output bed file")), ToolInput(tag="in_sample", input_type=File(optional=True), prefix="--sample", doc=InputDocumentation(doc="Sample name in VCF file to use. Will default to first\nsample (alphabetically) if not supplied")), ToolInput(tag="in_quality", input_type=Int(optional=True), prefix="--quality", doc=InputDocumentation(doc="Minimum genotype quality (default 20)")), ToolInput(tag="in_non_variant_quality", input_type=Int(optional=True), prefix="--non-variant-quality", doc=InputDocumentation(doc="Minimum genotype quality for non-variant records\n(default 20)")), ToolInput(tag="in_bed_graph", input_type=Boolean(optional=True), prefix="--bedgraph", doc=InputDocumentation(doc="Output in bedgraph mode"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output bed file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gvcf2Bed_V0_1_0().translate("wdl", allow_empty_container=True)

