from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Biscuit_Vcf2Bed_V0_1_0 = CommandToolBuilder(tool="biscuit_vcf2bed", base_command=["biscuit", "vcf2bed"], inputs=[ToolInput(tag="in_extract_type_", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="extract type {c, cg, ch, hcg, gch, snp} [CG]")), ToolInput(tag="in_minimum_coverage", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="minimum coverage [3]")), ToolInput(tag="in_sample_takes", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="sample, (takes 'FIRST', 'LAST', 'ALL', or specific sample names separated by ',')[FIRST]")), ToolInput(tag="in_show_base_group", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="show context (reference base, context group {CG,CHG,CHH}, 2-base {CA,CC,CG,CT} and 5-base context) before beta value and coverage column")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biscuit_Vcf2Bed_V0_1_0().translate("wdl", allow_empty_container=True)

