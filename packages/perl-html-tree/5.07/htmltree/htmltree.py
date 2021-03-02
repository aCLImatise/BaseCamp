from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Htmltree_V0_1_0 = CommandToolBuilder(tool="htmltree", base_command=["htmltree"], inputs=[ToolInput(tag="in__sets_figure", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="[number]  sets HTML::TreeBuilder::Debug to that figure.")), ToolInput(tag="in_turns_treewarn_new", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="turns on $tree->warn(1) for the new tree")), ToolInput(tag="in_d_three", input_type=Boolean(optional=True), prefix="-D3", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_two", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_three", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htmltree_V0_1_0().translate("wdl", allow_empty_container=True)

