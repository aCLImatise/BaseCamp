from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vcfutils_Pl_Hapmap2Vcf_V0_1_0 = CommandToolBuilder(tool="vcfutils.pl_hapmap2vcf", base_command=["vcfutils.pl", "hapmap2vcf"], inputs=[ToolInput(tag="in_vcf_utils_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_ucsc_dot_snp", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_hapmap", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bcftools:1.12--h3f113a9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfutils_Pl_Hapmap2Vcf_V0_1_0().translate("wdl")

