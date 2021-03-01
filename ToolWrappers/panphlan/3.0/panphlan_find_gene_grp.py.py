from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String, Boolean, Int

Panphlan_Find_Gene_Grp_Py_V0_1_0 = CommandToolBuilder(tool="panphlan_find_gene_grp.py", base_command=["panphlan_find_gene_grp.py"], inputs=[ToolInput(tag="in_i_matrix", input_type=File(optional=True), prefix="--i_matrix", doc=InputDocumentation(doc="Path to presence/absence matrix")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to ouput file with genes groups")), ToolInput(tag="in_cut_top", input_type=Float(optional=True), prefix="--cut_top", doc=InputDocumentation(doc="Amount of rows to remove based on top and bottom row\nsums. Default 0.01")), ToolInput(tag="in_out_plot", input_type=File(optional=True), prefix="--out_plot", doc=InputDocumentation(doc="Path to heatmap plot output.")), ToolInput(tag="in_pan_genome", input_type=File(optional=True), prefix="--pangenome", doc=InputDocumentation(doc="Path to pangenome file.")), ToolInput(tag="in_optics_xi", input_type=String(optional=True), prefix="--optics_xi", doc=InputDocumentation(doc="Xi parameter for OPTICS clustering")), ToolInput(tag="in_analysis", input_type=Boolean(optional=True), prefix="--analysis", doc=InputDocumentation(doc="Should gene groups be analyzed?")), ToolInput(tag="in_empirical", input_type=Int(optional=True), prefix="--empirical", doc=InputDocumentation(doc="How many ramdom sample in empirical pvalue generation\n? Default 500")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Show progress information"))], outputs=[ToolOutput(tag="out_out_plot", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_plot", type_hint=File()), doc=OutputDocumentation(doc="Path to heatmap plot output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Panphlan_Find_Gene_Grp_Py_V0_1_0().translate("wdl", allow_empty_container=True)

