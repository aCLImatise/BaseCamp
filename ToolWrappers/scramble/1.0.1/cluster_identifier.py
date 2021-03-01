from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Cluster_Identifier_V0_1_0 = CommandToolBuilder(tool="cluster_identifier", base_command=["cluster_identifier"], inputs=[ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_soft", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_clipped", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bases", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads", input_type=String(optional=True), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_cram", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/scramble:1.0.1--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cluster_Identifier_V0_1_0().translate("wdl")

