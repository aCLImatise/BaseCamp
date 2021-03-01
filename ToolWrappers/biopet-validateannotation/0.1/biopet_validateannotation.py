from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Biopet_Validateannotation_V0_1_0 = CommandToolBuilder(tool="biopet_validateannotation", base_command=["biopet-validateannotation"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'")), ToolInput(tag="in_ref_flat_file", input_type=File(optional=True), prefix="--refflatFile", doc=InputDocumentation(doc="Refflat file to check")), ToolInput(tag="in_gtf_file", input_type=File(optional=True), prefix="--gtfFile", doc=InputDocumentation(doc="Gtf files to check")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference fasta to check vcf file against")), ToolInput(tag="in_disable_fail", input_type=Boolean(optional=True), prefix="--disableFail", doc=InputDocumentation(doc="Do not fail on error. The tool will still exit when encountering an error, but will do so with exit code 0")), ToolInput(tag="in_validate_annotation", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biopet_Validateannotation_V0_1_0().translate("wdl", allow_empty_container=True)

