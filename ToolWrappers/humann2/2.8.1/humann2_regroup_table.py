from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Float

Humann2_Regroup_Table_V0_1_0 = CommandToolBuilder(tool="humann2_regroup_table", base_command=["humann2_regroup_table"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Original output table (tsv or biom format); default=[TSV/STDIN]")), ToolInput(tag="in_groups", input_type=String(optional=True), prefix="--groups", doc=InputDocumentation(doc="Built-in grouping options")), ToolInput(tag="in_custom", input_type=File(optional=True), prefix="--custom", doc=InputDocumentation(doc="Custom groups file (.tsv or .tsv.gz format)")), ToolInput(tag="in_reversed", input_type=Boolean(optional=True), prefix="--reversed", doc=InputDocumentation(doc="Custom groups file is reversed: mapping from features to groups")), ToolInput(tag="in_function", input_type=String(optional=True), prefix="--function", doc=InputDocumentation(doc="How to combine grouped features; default=sum")), ToolInput(tag="in_precision", input_type=Float(optional=True), prefix="--precision", doc=InputDocumentation(doc="Decimal places to round to after applying function; default=3")), ToolInput(tag="in_ungrouped", input_type=String(optional=True), prefix="--ungrouped", doc=InputDocumentation(doc="Include an 'UNGROUPED' group to capture features that did not belong to other groups? default=Y")), ToolInput(tag="in_protected", input_type=String(optional=True), prefix="--protected", doc=InputDocumentation(doc="Carry through protected features, such as 'UNMAPPED'? default=Y")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path for modified output table; default=STDOUT\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path for modified output table; default=STDOUT\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Regroup_Table_V0_1_0().translate("wdl", allow_empty_container=True)

