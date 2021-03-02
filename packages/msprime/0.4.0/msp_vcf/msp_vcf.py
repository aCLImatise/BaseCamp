from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Msp_Vcf_V0_1_0 = CommandToolBuilder(tool="msp_vcf", base_command=["msp", "vcf"], inputs=[ToolInput(tag="in_ploidy", input_type=String(optional=True), prefix="--ploidy", doc=InputDocumentation(doc="The ploidy level of samples\n")), ToolInput(tag="in_history_file", input_type=String(), position=0, doc=InputDocumentation(doc="The msprime history file in HDF5 format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msp_Vcf_V0_1_0().translate("wdl", allow_empty_container=True)

