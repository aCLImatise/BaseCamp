from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ppanini_Barplot_V0_1_0 = CommandToolBuilder(tool="ppanini_barplot", base_command=["ppanini_barplot"], inputs=[ToolInput(tag="in_p_panini_input", input_type=String(optional=True), prefix="--ppanini-input", doc=InputDocumentation(doc="Gene abundance table")), ToolInput(tag="in_p_panini_output", input_type=String(optional=True), prefix="--ppanini-output", doc=InputDocumentation(doc="PPANINI output table")), ToolInput(tag="in_summary_table", input_type=String(optional=True), prefix="--summary-table", doc=InputDocumentation(doc="Summary table")), ToolInput(tag="in_scale", input_type=String(optional=True), prefix="--scale", doc=InputDocumentation(doc="Scale: abundance or counts [default: abundance]")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output plot)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanini_Barplot_V0_1_0().translate("wdl", allow_empty_container=True)

