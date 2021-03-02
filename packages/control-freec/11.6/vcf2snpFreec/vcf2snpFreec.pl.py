from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Vcf2Snpfreec_Pl_V0_1_0 = CommandToolBuilder(tool="vcf2snpFreec.pl", base_command=["vcf2snpFreec.pl"], inputs=[ToolInput(tag="in_file_dbsnp_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="file                   dbSNP vcf file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Snpfreec_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

