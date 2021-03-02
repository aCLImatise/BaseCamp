from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Biopet_Validatevcf_V0_1_0 = CommandToolBuilder(tool="biopet_validatevcf", base_command=["biopet-validatevcf"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'")), ToolInput(tag="in_input_vcf", input_type=File(optional=True), prefix="--inputVcf", doc=InputDocumentation(doc="Vcf file to check")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference fasta to check vcf file against")), ToolInput(tag="in_disable_fail", input_type=Boolean(optional=True), prefix="--disableFail", doc=InputDocumentation(doc="Do not fail on error. The tool will still exit when encountering an error, but will do so with exit code 0")), ToolInput(tag="in_validate_vcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biopet_Validatevcf_V0_1_0().translate("wdl", allow_empty_container=True)

