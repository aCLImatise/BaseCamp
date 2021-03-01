from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Minvar_V0_1_0 = CommandToolBuilder(tool="minvar", base_command=["minvar"], inputs=[ToolInput(tag="in_fast_q", input_type=String(optional=True), prefix="--fastq", doc=InputDocumentation(doc="input reads in fastq format")), ToolInput(tag="in_recal", input_type=Boolean(optional=True), prefix="--recal", doc=InputDocumentation(doc="turn on recalibration with GATK <default: False>")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="keep intermediate files <default: False>")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minvar_V0_1_0().translate("wdl", allow_empty_container=True)

