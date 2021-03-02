from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Assign_Lineage_Py_V0_1_0 = CommandToolBuilder(tool="assign_lineage.py", base_command=["assign_lineage.py"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="what format is the tree file. This is passed to\ndendropy. default is 'nexus'")), ToolInput(tag="in_collapse_to_poly_to_mies", input_type=Int(optional=True), prefix="--collapse_to_polytomies", doc=InputDocumentation(doc="A optional flag to collapse branches with length <=\nthe input before running the rule.")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The input tree file. Format can be specified with the\nformat flag.")), ToolInput(tag="in__output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="*, --output output.*\nThe output file")), ToolInput(tag="in_index", input_type=String(optional=True), prefix="--index", doc=InputDocumentation(doc="The index of the trait to reconstruct when the tip\nlabel is split by the separator")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="optional separator used to get trait")), ToolInput(tag="in_tax_on", input_type=String(optional=True), prefix="--taxon", doc=InputDocumentation(doc="The tip label to get\n"))], outputs=[ToolOutput(tag="out__output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in__output_file", type_hint=File()), doc=OutputDocumentation(doc="*, --output output.*\nThe output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assign_Lineage_Py_V0_1_0().translate("wdl", allow_empty_container=True)

