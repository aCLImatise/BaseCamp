from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Mageckgsea_V0_1_0 = CommandToolBuilder(tool="mageckGSEA", base_command=["mageckGSEA"], inputs=[ToolInput(tag="in_reverse_value", input_type=Boolean(optional=True), prefix="--reverse_value", doc=InputDocumentation(doc="Reverse the order of the gene.")), ToolInput(tag="in_sort_by_p", input_type=Boolean(optional=True), prefix="--sort_byp", doc=InputDocumentation(doc="Sort the pathways by p value.")), ToolInput(tag="in_score_column", input_type=Int(optional=True), prefix="--score_column", doc=InputDocumentation(doc="The column for gene scores. If you just want to use the ranking of the\ngene (located at the 1st column), use 0. The column number starts from\n0. Default: 0.")), ToolInput(tag="in_perm_time", input_type=Int(optional=True), prefix="--perm_time", doc=InputDocumentation(doc="Permutations, default 1000.")), ToolInput(tag="in_name_pathway_tested", input_type=String(optional=True), prefix="--pathway_name", doc=InputDocumentation(doc="Name of the pathway to be tested. If not found, will test all\npathways.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="The name of the output file. Use - to print to standard output.")), ToolInput(tag="in_rank_file", input_type=File(optional=True), prefix="--rank_file", doc=InputDocumentation(doc="(required)  Rank file. The first column of the rank file must be the\ngene name.")), ToolInput(tag="in_gmt_file", input_type=File(optional=True), prefix="--gmt_file", doc=InputDocumentation(doc="(required)  The pathway annotation in GMT format.")), ToolInput(tag="in_var_8", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="The name of the output file. Use - to print to standard output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mageckgsea_V0_1_0().translate("wdl", allow_empty_container=True)

