from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fastqanalyze_V0_1_0 = CommandToolBuilder(tool="fastqAnalyze", base_command=["fastqAnalyze"], inputs=[ToolInput(tag="in_solexa", input_type=Boolean(optional=True), prefix="-solexa", doc=InputDocumentation(doc="input QV is solexa")), ToolInput(tag="in_illumina", input_type=Boolean(optional=True), prefix="-illumina", doc=InputDocumentation(doc="input QV is illumina")), ToolInput(tag="in_sanger", input_type=Boolean(optional=True), prefix="-sanger", doc=InputDocumentation(doc="input QV is sanger")), ToolInput(tag="in_sangerstyleoutputfastq", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="sanger-style-output.fastq")), ToolInput(tag="in_stats", input_type=Boolean(optional=True), prefix="-stats", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dot", input_type=String(), position=0, doc=InputDocumentation(doc="For conversion, you can force the input QV type with:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqanalyze_V0_1_0().translate("wdl", allow_empty_container=True)

