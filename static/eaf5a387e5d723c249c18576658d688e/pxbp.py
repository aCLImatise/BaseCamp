from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Pxbp_V0_1_0 = CommandToolBuilder(tool="pxbp", base_command=["pxbp"], inputs=[ToolInput(tag="in_tree_f", input_type=File(optional=True), prefix="--treef", doc=InputDocumentation(doc="input treefile, STDIN otherwise")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="give more output")), ToolInput(tag="in_edge_all", input_type=Boolean(optional=True), prefix="--edgeall", doc=InputDocumentation(doc="force edgewise (not node - so when things are unrooted) and\nassume all taxa are present in all trees")), ToolInput(tag="in_unique_tree", input_type=Boolean(optional=True), prefix="--uniquetree", doc=InputDocumentation(doc="output unique trees and *no* other output")), ToolInput(tag="in_map_tree", input_type=File(optional=True), prefix="--maptree", doc=InputDocumentation(doc="put the bipart freq on the edges of this tree. This will\ncreate a *.pxbpmapped.tre file.")), ToolInput(tag="in_cut_off", input_type=Boolean(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="skip biparts that have support lower than this.")), ToolInput(tag="in_suppress", input_type=Boolean(optional=True), prefix="--suppress", doc=InputDocumentation(doc="don't print all the output (maybe you use this\nwith the maptree feature")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxbp_V0_1_0().translate("wdl")

