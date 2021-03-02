from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Calib_Cons_V0_1_0 = CommandToolBuilder(tool="calib_cons", base_command=["calib_cons"], inputs=[ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="(type: space separated string list;\nREQUIRED paramter;\ncan be set multiple times like in Example 2)")), ToolInput(tag="in_output_prefix", input_type=Boolean(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="(type: space separated string list;\nREQUIRED paramter;\ncan be set multiple times like in Example 2;\nmust be same size as fastq list)")), ToolInput(tag="in_cluster", input_type=Boolean(optional=True), prefix="--cluster", doc=InputDocumentation(doc="(string;\nREQUIRED paramter)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="(positive integer;\ndefault: 4)")), ToolInput(tag="in_min_reads_per_cluster", input_type=Boolean(optional=True), prefix="--min-reads-per-cluster", doc=InputDocumentation(doc="(positive integer;\ndefault: 2)")), ToolInput(tag="in_parameter", input_type=String(optional=True), prefix="--PARAMETER", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calib_Cons_V0_1_0().translate("wdl", allow_empty_container=True)

