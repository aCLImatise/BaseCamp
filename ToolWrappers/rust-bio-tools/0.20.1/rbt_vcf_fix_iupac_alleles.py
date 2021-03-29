from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rbt_Vcf_Fix_Iupac_Alleles_V0_1_0 = CommandToolBuilder(tool="rbt_vcf_fix_iupac_alleles", base_command=["rbt", "vcf-fix-iupac-alleles"], inputs=[ToolInput(tag="in_rbt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/rust-bio-tools:0.20.1--heda7bfa_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Vcf_Fix_Iupac_Alleles_V0_1_0().translate("wdl")

