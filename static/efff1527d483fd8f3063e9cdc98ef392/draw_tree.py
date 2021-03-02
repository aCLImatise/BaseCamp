from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Draw_Tree_V0_1_0 = CommandToolBuilder(tool="draw_tree", base_command=["draw_tree"], inputs=[ToolInput(tag="in_print_opposed_option", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Print 'diagonal' branches, instead of 'right-angle' or\n'square' ones (produces a 'cladogram', as opposed to a\n'phenogram').  This option implies -s.")), ToolInput(tag="in_suppress_branch_lengths", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Suppress branch lengths.")), ToolInput(tag="in_vertical_layout", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Vertical layout.")), ToolInput(tag="in_draw_branches_scale", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Don't draw branches to scale.")), ToolInput(tag="in_db_vs", input_type=Boolean(optional=True), prefix="-dbvs", doc=InputDocumentation(doc="")), ToolInput(tag="in_tree_dot_nh", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Draw_Tree_V0_1_0().translate("wdl", allow_empty_container=True)

