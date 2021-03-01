from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Surpyvor_Fixvcf_V0_1_0 = CommandToolBuilder(tool="surpyvor_fixvcf", base_command=["surpyvor", "fixvcf"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print out more information while running.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="vcf file to write to\n")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="vcf file to parse"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Surpyvor_Fixvcf_V0_1_0().translate("wdl", allow_empty_container=True)

