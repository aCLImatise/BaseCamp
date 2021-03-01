from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Pegasus_Annotate_Cluster_Input_Data_File_V0_1_0 = CommandToolBuilder(tool="pegasus_annotate_cluster_input_data_file", base_command=["pegasus", "annotate_cluster", "input_data_file"], inputs=[ToolInput(tag="in_annotation", input_type=String(optional=True), prefix="--annotation", doc=InputDocumentation(doc="")), ToolInput(tag="in_do_not_use_non_de_genes", input_type=Boolean(optional=True), prefix="--do-not-use-non-de-genes", doc=InputDocumentation(doc="")), ToolInput(tag="in_minimum_report_score", input_type=String(optional=True), prefix="--minimum-report-score", doc=InputDocumentation(doc="")), ToolInput(tag="in_de_key", input_type=String(optional=True), prefix="--de-key", doc=InputDocumentation(doc="")), ToolInput(tag="in_de_alpha", input_type=String(optional=True), prefix="--de-alpha", doc=InputDocumentation(doc="")), ToolInput(tag="in_de_test", input_type=String(optional=True), prefix="--de-test", doc=InputDocumentation(doc="")), ToolInput(tag="in_markers", input_type=String(optional=True), prefix="--markers", doc=InputDocumentation(doc="")), ToolInput(tag="in_pegasus", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_annotate_cluster", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pegasus_Annotate_Cluster_Input_Data_File_V0_1_0().translate("wdl")

