from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ghost_Tree_Filter_Alignment_Positions_V0_1_0 = CommandToolBuilder(tool="ghost_tree_filter_alignment_positions", base_command=["ghost-tree", "filter-alignment-positions"], inputs=[ToolInput(tag="in_foundation_alignment_file", input_type=String(), position=0, doc=InputDocumentation(doc="MAXIMUM_GAP_FREQUENCY")), ToolInput(tag="in_maximum_position_entropy", input_type=String(), position=1, doc=InputDocumentation(doc="OUTPUT_ALIGNMENT_FILE"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ghost_Tree_Filter_Alignment_Positions_V0_1_0().translate("wdl", allow_empty_container=True)

