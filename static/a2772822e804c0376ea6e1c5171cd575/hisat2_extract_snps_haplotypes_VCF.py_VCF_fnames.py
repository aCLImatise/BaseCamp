from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Hisat2_Extract_Snps_Haplotypes_Vcf_Py_Vcf_Fnames_V0_1_0 = CommandToolBuilder(tool="hisat2_extract_snps_haplotypes_VCF.py_VCF_fnames", base_command=["hisat2_extract_snps_haplotypes_VCF.py", "VCF_fnames"], inputs=[ToolInput(tag="in_his_at_two_extract_snps_haplotypes_vcf_do_tpy", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisat2_Extract_Snps_Haplotypes_Vcf_Py_Vcf_Fnames_V0_1_0().translate("wdl", allow_empty_container=True)

