from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Float

Artic_Tools_Check_Vcf_V0_1_0 = CommandToolBuilder(tool="artic_tools_check_vcf", base_command=["artic-tools", "check_vcf"], inputs=[ToolInput(tag="in_summary_out", input_type=String(optional=True), prefix="--summaryOut", doc=InputDocumentation(doc="REQUIRED\nSummary of variant checks will be written here (TSV format)")), ToolInput(tag="in_vcf_out", input_type=File(optional=True), prefix="--vcfOut", doc=InputDocumentation(doc="If provided, will write variants that pass checks to this file")), ToolInput(tag="in_min_qual", input_type=Float(optional=True), prefix="--minQual", doc=InputDocumentation(doc="Minimum quality score to keep a variant (default = 10)")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_scheme", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Artic_Tools_Check_Vcf_V0_1_0().translate("wdl")

