from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float

Radpainter_Hapsfromvcf_V0_1_0 = CommandToolBuilder(tool="RADpainter_hapsFromVCF", base_command=["RADpainter", "hapsFromVCF"], inputs=[ToolInput(tag="in_het_treatment", input_type=String(optional=True), prefix="--het-treatment", doc=InputDocumentation(doc="r: assign het bases randomly (default); p: use the phase information in the VCF")), ToolInput(tag="in_minimum_acceptable_inbreeding", input_type=Float(optional=True), prefix="-F", doc=InputDocumentation(doc="minimum acceptable inbreeding coefficient (default: F >= -0.3)")), ToolInput(tag="in_input_dot_vcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Radpainter_Hapsfromvcf_V0_1_0().translate("wdl", allow_empty_container=True)

