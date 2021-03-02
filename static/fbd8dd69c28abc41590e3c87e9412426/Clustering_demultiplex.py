from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Clustering_Demultiplex_V0_1_0 = CommandToolBuilder(tool="Clustering_demultiplex", base_command=["Clustering", "demultiplex"], inputs=[ToolInput(tag="in_demultiplex", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_id_mapping", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample_mapping", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_result_file", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_tab_index", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_directory", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_Demultiplex_V0_1_0().translate("wdl", allow_empty_container=True)

