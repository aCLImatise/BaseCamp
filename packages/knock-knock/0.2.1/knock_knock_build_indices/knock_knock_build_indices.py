from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Knock_Knock_Build_Indices_V0_1_0 = CommandToolBuilder(tool="knock_knock_build_indices", base_command=["knock-knock", "build-indices"], inputs=[ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="number of threads to use for index building\n")), ToolInput(tag="in_project_directory", input_type=String(), position=0, doc=InputDocumentation(doc="the base directory to store input data, reference\nannotations, and analysis output for a project")), ToolInput(tag="in_genome_name", input_type=String(), position=1, doc=InputDocumentation(doc="name of genome to download"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knock_Knock_Build_Indices_V0_1_0().translate("wdl", allow_empty_container=True)

