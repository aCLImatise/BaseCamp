from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Cage_V0_1_0 = CommandToolBuilder(tool="cage", base_command=["cage"], inputs=[ToolInput(tag="in_output_vcf", input_type=File(optional=True), prefix="--output_vcf", doc=InputDocumentation(doc="(OR required)  File to output variants called when running CAGe\n-- OR --")), ToolInput(tag="in_input_snp_db", input_type=File(optional=True), prefix="--input_SNP_db", doc=InputDocumentation(doc="(OR required)  Filename of sqlite3 SNP database")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print verbose output of CAGe"))], outputs=[ToolOutput(tag="out_output_vcf", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_vcf", type_hint=File()), doc=OutputDocumentation(doc="(OR required)  File to output variants called when running CAGe\n-- OR --"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cage_V0_1_0().translate("wdl", allow_empty_container=True)

