from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Vcf2Scoary_V0_1_0 = CommandToolBuilder(tool="vcf2scoary", base_command=["vcf2scoary"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="The path to the output file")), ToolInput(tag="in_types", input_type=File(optional=True), prefix="--types", doc=InputDocumentation(doc="The types of variants to include in the output. NOTE: This\nworks if TYPE=XX can be found in the INFO column of the vcf\nfile. The special keyword ALL includes all types. This is the\ndefault setting. Common types are snp, mnp, ins, del and\ncomplex. Give as comma-separated list. Example: --types\nsnp,ins,del")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwriting of output file. (If it already exists)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="The path to the output file")), ToolOutput(tag="out_types", output_type=File(optional=True), selector=InputSelector(input_to_select="in_types", type_hint=File()), doc=OutputDocumentation(doc="The types of variants to include in the output. NOTE: This\nworks if TYPE=XX can be found in the INFO column of the vcf\nfile. The special keyword ALL includes all types. This is the\ndefault setting. Common types are snp, mnp, ins, del and\ncomplex. Give as comma-separated list. Example: --types\nsnp,ins,del")), ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Force overwriting of output file. (If it already exists)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Scoary_V0_1_0().translate("wdl", allow_empty_container=True)

