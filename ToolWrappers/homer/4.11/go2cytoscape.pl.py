from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Go2Cytoscape_Pl_V0_1_0 = CommandToolBuilder(tool="go2cytoscape.pl", base_command=["go2cytoscape.pl"], inputs=[ToolInput(tag="in_gotwocytosapedotpl", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_prefix", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_homer_go_results_file", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_organism", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Go2Cytoscape_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

