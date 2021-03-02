from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Float

Compiled_Table_Py_V0_1_0 = CommandToolBuilder(tool="compiled_table.py", base_command=["compiled_table.py"], inputs=[ToolInput(tag="in_tables", input_type=Array(t=String(), optional=True), prefix="--tables", doc=InputDocumentation(doc="tables to compile")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="gbk file of reference")), ToolInput(tag="in_query", input_type=File(optional=True), prefix="--query", doc=InputDocumentation(doc="fasta file for insertion sequence query for")), ToolInput(tag="in_cds", input_type=String(optional=True), prefix="--cds", doc=InputDocumentation(doc="qualifier containing gene information (default\nproduct). Also note that all CDS features MUST have a\nlocus_tag")), ToolInput(tag="in_trna", input_type=String(optional=True), prefix="--trna", doc=InputDocumentation(doc="qualifier containing gene information (default\nproduct). Also note that all tRNA features MUST have a\nlocus_tag")), ToolInput(tag="in_rrna", input_type=String(optional=True), prefix="--rrna", doc=InputDocumentation(doc="qualifier containing gene information (default\nproduct). Also note that all rRNA features MUST have a\nlocus_tag")), ToolInput(tag="in_imprecise", input_type=Float(optional=True), prefix="--imprecise", doc=InputDocumentation(doc="Binary value for imprecise (*) hit (can be 1, 0 or\n0.5), default is 1")), ToolInput(tag="in_unconfident", input_type=Float(optional=True), prefix="--unconfident", doc=InputDocumentation(doc="Binary value for questionable (?) hit (can be 1, 0 or\n0.5), default is 0")), ToolInput(tag="in_out_prefix", input_type=File(optional=True), prefix="--out_prefix", doc=InputDocumentation(doc="Prefix for output file\n")), ToolInput(tag="in_compilation", input_type=String(), position=0, doc=InputDocumentation(doc="--gap GAP             distance between regions to call overlapping, default"))], outputs=[ToolOutput(tag="out_out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_prefix", type_hint=File()), doc=OutputDocumentation(doc="Prefix for output file\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compiled_Table_Py_V0_1_0().translate("wdl", allow_empty_container=True)

