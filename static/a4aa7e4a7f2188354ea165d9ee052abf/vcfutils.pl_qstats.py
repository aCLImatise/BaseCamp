from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Vcfutils_Pl_Qstats_V0_1_0 = CommandToolBuilder(tool="vcfutils.pl_qstats", base_command=["vcfutils.pl", "qstats"], inputs=[ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_utils_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bcftools:1.12--h3f113a9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfutils_Pl_Qstats_V0_1_0().translate("wdl")

