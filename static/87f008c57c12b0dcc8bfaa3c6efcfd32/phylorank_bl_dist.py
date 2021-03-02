from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Phylorank_Bl_Dist_V0_1_0 = CommandToolBuilder(tool="phylorank_bl_dist", base_command=["phylorank", "bl_dist"], inputs=[ToolInput(tag="in_trusted_tax_a_file", input_type=File(optional=True), prefix="--trusted_taxa_file", doc=InputDocumentation(doc="file indicating trusted taxonomic groups to use for\ninferring distribution (default: all taxa)")), ToolInput(tag="in_min_children", input_type=Int(optional=True), prefix="--min_children", doc=InputDocumentation(doc="minimum required child taxa to consider taxa when\ninferring distribution (default: 2)")), ToolInput(tag="in_taxonomy_file", input_type=File(optional=True), prefix="--taxonomy_file", doc=InputDocumentation(doc="read taxonomy from this file instead of directly from\ntree\n")), ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="input tree to calculate branch length distributions")), ToolInput(tag="in_output_dir", input_type=String(), position=1, doc=InputDocumentation(doc="desired output directory for generated files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylorank_Bl_Dist_V0_1_0().translate("wdl", allow_empty_container=True)

