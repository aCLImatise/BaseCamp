from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Pathwaymatcher_Match_Rsids_V0_1_0 = CommandToolBuilder(tool="pathwaymatcher_match_rsids", base_command=["pathwaymatcher", "match-rsids"], inputs=[ToolInput(tag="in_mapping", input_type=File(optional=True), prefix="--mapping", doc=InputDocumentation(doc="Path to directory with the static mapping files. By\ndefault uses the mapping files integrated in the jar\nfile.")), ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="--graph", doc=InputDocumentation(doc="Create default connection graph according to input type.")), ToolInput(tag="in_graph_gene", input_type=Boolean(optional=True), prefix="--graphGene", doc=InputDocumentation(doc="Create gene connection graph")), ToolInput(tag="in_graph_proteo_form", input_type=String(optional=True), prefix="--graphProteoform", doc=InputDocumentation(doc="proteoform connection graph")), ToolInput(tag="in_graph_uniprot", input_type=Boolean(optional=True), prefix="--graphUniprot", doc=InputDocumentation(doc="Create protein connection graph")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input file with path")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path and prefix for the output files: search.tsv (list\nof reactions and pathways containing the input),\nanalysis.tsv (over-representation analysis) and\nnetworks files.")), ToolInput(tag="in_top_level_pathways", input_type=Boolean(optional=True), prefix="--topLevelPathways", doc=InputDocumentation(doc="Show Top Level Pathways in the search result.")), ToolInput(tag="in_gt", input_type=Boolean(optional=True), prefix="-gT", doc=InputDocumentation(doc="")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_match_r_sids", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pathwaymatcher_Match_Rsids_V0_1_0().translate("wdl", allow_empty_container=True)

