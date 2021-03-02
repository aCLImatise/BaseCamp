from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hyphy_Sa_V0_1_0 = CommandToolBuilder(tool="hyphy_sa", base_command=["hyphy", "sa"], inputs=[ToolInput(tag="in_fprintfstdout", input_type=String(), position=0, doc=InputDocumentation(doc="fprintf(stdout, 'Input file contained 3 or fewer sequences - not much inference to be done!\n');")), ToolInput(tag="in_branch_under_condition", input_type=String(), position=1, doc=InputDocumentation(doc="Branch under condition 'randomOption==1'")), ToolInput(tag="in_treenodes", input_type=String(), position=2, doc=InputDocumentation(doc="treeNodes={filteredData.species,1};")), ToolInput(tag="in_additionorder", input_type=String(), position=3, doc=InputDocumentation(doc="additionOrder={filteredData.species,1};"))], outputs=[], container="quay.io/biocontainers/hyphy:2.5.28--h3db2f75_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hyphy_Sa_V0_1_0().translate("wdl")

