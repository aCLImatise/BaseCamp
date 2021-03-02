from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vcf_Allele_Freq_Py_V0_1_0 = CommandToolBuilder(tool="vcf_allele_freq.py", base_command=["vcf_allele_freq.py"], inputs=[ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="VCF input (default: stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf_Allele_Freq_Py_V0_1_0().translate("wdl", allow_empty_container=True)

