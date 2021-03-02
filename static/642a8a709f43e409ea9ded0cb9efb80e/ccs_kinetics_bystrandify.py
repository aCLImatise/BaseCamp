from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ccs_Kinetics_Bystrandify_V0_1_0 = CommandToolBuilder(tool="ccs_kinetics_bystrandify", base_command=["ccs-kinetics-bystrandify"], inputs=[ToolInput(tag="in_min_coverage", input_type=Boolean(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="INT   Specifies the minimum number of passes per strand (fn/rn) for creating a strand-specific read.\n[1]")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [INFO]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE  Log to a file, instead of stderr.")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="FILE  Input BAM file")), ToolInput(tag="in_out_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc="FILE  Output BAM file"))], outputs=[], container="quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ccs_Kinetics_Bystrandify_V0_1_0().translate("wdl")

