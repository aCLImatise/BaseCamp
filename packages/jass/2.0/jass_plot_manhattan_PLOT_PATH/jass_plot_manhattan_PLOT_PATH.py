from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Jass_Plot_Manhattan_Plot_Path_V0_1_0 = CommandToolBuilder(tool="jass_plot_manhattan_PLOT_PATH", base_command=["jass", "plot-manhattan", "PLOT_PATH"], inputs=[ToolInput(tag="in_plot_path", input_type=Boolean(optional=True), prefix="--plot-path", doc=InputDocumentation(doc="")), ToolInput(tag="in_work_table_path", input_type=File(optional=True), prefix="--worktable-path", doc=InputDocumentation(doc="")), ToolInput(tag="in_jass", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_plot_manhattan", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jass_Plot_Manhattan_Plot_Path_V0_1_0().translate("wdl", allow_empty_container=True)

