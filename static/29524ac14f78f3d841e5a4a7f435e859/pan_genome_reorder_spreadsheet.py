from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Pan_Genome_Reorder_Spreadsheet_V0_1_0 = CommandToolBuilder(tool="pan_genome_reorder_spreadsheet", base_command=["pan_genome_reorder_spreadsheet"], inputs=[ToolInput(tag="in_tree_filename", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="tree filename []")), ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output filename [reordered_spreadsheet.csv]")), ToolInput(tag="in_tree_format_newicknexusnhxsvggraphtabtreelintree", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="tree format (newick/nexus/nhx/svggraph/tabtree/lintree) [newick]")), ToolInput(tag="in_input_gene_presence", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="input gene presence and absence spreadsheet [gene_presence_absence.csv]")), ToolInput(tag="in_search_strategy_depthbreadth", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="search strategy (depth/breadth) [depth]")), ToolInput(tag="in_sorting_method_heightcreationalpharevalpha", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="sorting method (height/creation/alpha/revalpha) [height]")), ToolInput(tag="in_verbose_output_stdout", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output to STDOUT"))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="output filename [reordered_spreadsheet.csv]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pan_Genome_Reorder_Spreadsheet_V0_1_0().translate("wdl", allow_empty_container=True)

