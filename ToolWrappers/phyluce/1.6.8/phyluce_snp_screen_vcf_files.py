from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phyluce_Snp_Screen_Vcf_Files_V0_1_0 = CommandToolBuilder(tool="phyluce_snp_screen_vcf_files", base_command=["phyluce_snp_screen_vcf_files"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The vcf file to process")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The vcf file to write")), ToolInput(tag="in_complete", input_type=String(optional=True), prefix="--complete", doc=InputDocumentation(doc="The percentage of missing data to allow."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Snp_Screen_Vcf_Files_V0_1_0().translate("wdl", allow_empty_container=True)

