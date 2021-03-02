from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Snpsift_Private_V0_1_0 = CommandToolBuilder(tool="SnpSift_private", base_command=["SnpSift", "private"], inputs=[ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_do_ttf_am", input_type=File(), position=0, doc=InputDocumentation(doc=": File with genotypes and groups information (in PLINK's TFAM format)")), ToolInput(tag="in_file_dot_vcf", input_type=File(), position=1, doc=InputDocumentation(doc=": A VCF file (variants and genotype data). Default: 'STDIN'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Private_V0_1_0().translate("wdl", allow_empty_container=True)

