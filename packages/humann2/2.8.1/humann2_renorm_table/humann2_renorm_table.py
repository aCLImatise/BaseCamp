from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Humann2_Renorm_Table_V0_1_0 = CommandToolBuilder(tool="humann2_renorm_table", base_command=["humann2_renorm_table"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Original output table (tsv or biom format); default=[TSV/STDIN]")), ToolInput(tag="in_units", input_type=String(optional=True), prefix="--units", doc=InputDocumentation(doc="Normalization scheme: copies per million [cpm], relative abundance [relab]; default=[cpm]")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Normalize all levels by [community] total or [levelwise] totals; default=[community]")), ToolInput(tag="in_special", input_type=String(optional=True), prefix="--special", doc=InputDocumentation(doc="Include the special features UNMAPPED, UNINTEGRATED, and UNGROUPED; default=[y]")), ToolInput(tag="in_update_s_names", input_type=Boolean(optional=True), prefix="--update-snames", doc=InputDocumentation(doc="Update '-RPK' in sample names to appropriate suffix; default=off")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path for modified output table; default=[STDOUT]\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path for modified output table; default=[STDOUT]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Renorm_Table_V0_1_0().translate("wdl", allow_empty_container=True)

