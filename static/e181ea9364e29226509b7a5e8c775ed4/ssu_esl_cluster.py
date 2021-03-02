from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Ssu_Esl_Cluster_V0_1_0 = CommandToolBuilder(tool="ssu_esl_cluster", base_command=["ssu-esl-cluster"], inputs=[ToolInput(tag="in_field_read_query", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc=": field to read as query name, 1..n  [8]  (n>0)")), ToolInput(tag="in_field_read_target", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc=": field to read as target name, 1..n  [5]  (n>0)")), ToolInput(tag="in_field_read_distance", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc=": field to read as distance value, 1..n  [1]  (n>0)")), ToolInput(tag="in__clustering_threshold", input_type=Float(optional=True), prefix="-x", doc=InputDocumentation(doc=": clustering threshold  [1e-4]  (x>0)")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_keyfile", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tab_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Esl_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

