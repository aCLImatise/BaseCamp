from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Vcfgenotypecompare_V0_1_0 = CommandToolBuilder(tool="vcfgenotypecompare", base_command=["vcfgenotypecompare"], inputs=[ToolInput(tag="in_other_genotype_tag", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfgenotypecompare_V0_1_0().translate("wdl", allow_empty_container=True)

