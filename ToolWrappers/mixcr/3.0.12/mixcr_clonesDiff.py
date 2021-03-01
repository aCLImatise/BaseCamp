from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Mixcr_Clonesdiff_V0_1_0 = CommandToolBuilder(tool="mixcr_clonesDiff", base_command=["mixcr", "clonesDiff"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose warning messages.")), ToolInput(tag="in_use_c_gene", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Use C gene in clone comparison (include it as a clone key along with a clone\nsequence).")), ToolInput(tag="in_force_overwrite", input_type=File(optional=True), prefix="--force-overwrite", doc=InputDocumentation(doc="Force overwrite of output file(s).")), ToolInput(tag="in_use_j_gene", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="Use J gene in clone comparison (include it as a clone key along with a clone\nsequence).")), ToolInput(tag="in_no_warnings", input_type=Boolean(optional=True), prefix="--no-warnings", doc=InputDocumentation(doc="Suppress all warning messages.")), ToolInput(tag="in_use_v_gene", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Use V gene in clone comparison (include it as a clone key along with a clone\nsequence).\n")), ToolInput(tag="in_cf_jv", input_type=Boolean(optional=True), prefix="-cfjv", doc=InputDocumentation(doc="")), ToolInput(tag="in_scr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_clones_diff", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_two", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_report", input_type=String(optional=True), position=4, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_force_overwrite", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite", type_hint=File()), doc=OutputDocumentation(doc="Force overwrite of output file(s)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mixcr_Clonesdiff_V0_1_0().translate("wdl", allow_empty_container=True)

