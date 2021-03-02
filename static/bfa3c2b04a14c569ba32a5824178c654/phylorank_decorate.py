from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Phylorank_Decorate_V0_1_0 = CommandToolBuilder(tool="phylorank_decorate", base_command=["phylorank", "decorate"], inputs=[ToolInput(tag="in_viral", input_type=Boolean(optional=True), prefix="--viral", doc=InputDocumentation(doc="indicates a viral input tree and taxonomy")), ToolInput(tag="in_skip_rd_refine", input_type=Boolean(optional=True), prefix="--skip_rd_refine", doc=InputDocumentation(doc="skip refinement of taxonomy based on relative\ndivergence information")), ToolInput(tag="in_trusted_tax_a_file", input_type=File(optional=True), prefix="--trusted_taxa_file", doc=InputDocumentation(doc="file indicating trusted taxonomic groups to use for\ninferring distribution (default: all taxa)")), ToolInput(tag="in_min_children", input_type=Int(optional=True), prefix="--min_children", doc=InputDocumentation(doc="minimum required child taxa to consider taxa when\ninferring distribution (default: 2)")), ToolInput(tag="in_min_support", input_type=Int(optional=True), prefix="--min_support", doc=InputDocumentation(doc="minimum support value to consider taxa when inferring\ndistribution (default: 0) (default: 0.0)\n")), ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="tree to decorate")), ToolInput(tag="in_taxonomy_file", input_type=String(), position=1, doc=InputDocumentation(doc="file indicating taxonomy of extant taxa")), ToolInput(tag="in_output_tree", input_type=String(), position=2, doc=InputDocumentation(doc="decorated tree"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylorank_Decorate_V0_1_0().translate("wdl", allow_empty_container=True)

