from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Freec_V0_1_0 = CommandToolBuilder(tool="freec", base_command=["freec"], inputs=[ToolInput(tag="in_sample", input_type=String(optional=True), prefix="-sample", doc=InputDocumentation(doc="")), ToolInput(tag="in_conf", input_type=File(optional=True), prefix="-conf", doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="freec -conf <config file> -sample <mySample.bam> -control <myControl.bam>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Freec_V0_1_0().translate("wdl", allow_empty_container=True)

