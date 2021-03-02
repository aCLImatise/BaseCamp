from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Hisat2_Extract_Snps_Haplotypes_Ucsc_Py_Snp_Fname_V0_1_0 = CommandToolBuilder(tool="hisat2_extract_snps_haplotypes_UCSC.py_snp_fname", base_command=["hisat2_extract_snps_haplotypes_UCSC.py", "snp_fname"], inputs=[ToolInput(tag="in_inter_gap", input_type=String(optional=True), prefix="--inter-gap", doc=InputDocumentation(doc="")), ToolInput(tag="in_his_at_two_extract_snps_haplotypes_ucsc_do_tpy", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisat2_Extract_Snps_Haplotypes_Ucsc_Py_Snp_Fname_V0_1_0().translate("wdl", allow_empty_container=True)

