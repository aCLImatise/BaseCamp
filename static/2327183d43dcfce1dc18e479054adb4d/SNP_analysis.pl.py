from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Snp_Analysis_Pl_V0_1_0 = CommandToolBuilder(tool="SNP_analysis.pl", base_command=["SNP_analysis.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="-gff", doc=InputDocumentation(doc="GFF is an alternative to genbank. Use either one."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snp_Analysis_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

