from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Humann2_Rename_Table_V0_1_0 = CommandToolBuilder(tool="humann2_rename_table", base_command=["humann2_rename_table"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Original output table (tsv or biom format); default=[TSV/STDIN]")), ToolInput(tag="in_names", input_type=String(optional=True), prefix="--names", doc=InputDocumentation(doc="Table features that can be renamed with included data files")), ToolInput(tag="in_custom", input_type=String(optional=True), prefix="--custom", doc=InputDocumentation(doc="Custom mapping of feature IDs to full names (.tsv or .tsv.gz)")), ToolInput(tag="in_simplify", input_type=Boolean(optional=True), prefix="--simplify", doc=InputDocumentation(doc="Remove non-alphanumeric characters from names")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path for modified output table; default=[STDOUT]\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path for modified output table; default=[STDOUT]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Rename_Table_V0_1_0().translate("wdl", allow_empty_container=True)

