from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Repair_Run_Summary_Rb_V0_1_0 = CommandToolBuilder(tool="repair_run_summary.rb", base_command=["repair_run_summary.rb"], inputs=[ToolInput(tag="in_base_name", input_type=File(optional=True), prefix="--base-name", doc=InputDocumentation(doc="Original MSMS spectrum file used for search")), ToolInput(tag="in_raw_type", input_type=String(optional=True), prefix="--raw-type", doc=InputDocumentation(doc="Raw data type used for search")), ToolInput(tag="in_om_ssa_it_ol", input_type=String(optional=True), prefix="--omssa-itol", doc=InputDocumentation(doc="Add a fragment ion tolerance parameter to the omssa search summary")), ToolInput(tag="in_file_one_dot_pep_xml", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Repair_Run_Summary_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

