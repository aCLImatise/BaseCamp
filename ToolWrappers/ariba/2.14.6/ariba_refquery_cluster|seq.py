from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Ariba_Refquery_Cluster_Seq_V0_1_0 = CommandToolBuilder(tool="ariba_refquery_cluster|seq", base_command=["ariba", "refquery", "cluster|seq"], inputs=[ToolInput(tag="in_ariba", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_query", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_prepare_ref_directory", input_type=Directory(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_cluster_vertical_line_seq", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_cluster_name_vertical_line_sequence_name", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ariba_Refquery_Cluster_Seq_V0_1_0().translate("wdl")

