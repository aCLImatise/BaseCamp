from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rppr_Rppr_V0_1_0 = CommandToolBuilder(tool="rppr_rppr", base_command=["rppr", "rppr"], inputs=[ToolInput(tag="in_rp_pr", input_type=String(), position=0, doc=InputDocumentation(doc="check          checks a reference package")), ToolInput(tag="in_convex_tax_ids", input_type=String(), position=1, doc=InputDocumentation(doc="determines convex tax_ids per-rank in a refpkg")), ToolInput(tag="in_convex_if_y", input_type=String(), position=2, doc=InputDocumentation(doc="identifies minimal leaf set to cut for taxonomic concordance")), ToolInput(tag="in_infer", input_type=String(), position=3, doc=InputDocumentation(doc="infers classifications of unclassified sequences in a reference package")), ToolInput(tag="in_info", input_type=String(), position=4, doc=InputDocumentation(doc="gives information about a reference package")), ToolInput(tag="in_min_a_dcl", input_type=String(), position=5, doc=InputDocumentation(doc="finds a good collection of sequences to cut from a placefile's ref tree")), ToolInput(tag="in_min_a_dcl_tree", input_type=String(), position=6, doc=InputDocumentation(doc="finds a good collection of sequences to cut from a tree")), ToolInput(tag="in_pd_prune", input_type=String(), position=7, doc=InputDocumentation(doc="prunes the tree to maximize PD")), ToolInput(tag="in_prep_db", input_type=String(), position=8, doc=InputDocumentation(doc="makes SQL enabling taxonomic querying of placement results")), ToolInput(tag="in_prep_sim", input_type=String(), position=9, doc=InputDocumentation(doc="makes a simulation by taking out taxids and turning them into fake placements")), ToolInput(tag="in_re_class", input_type=String(), position=10, doc=InputDocumentation(doc="reclassifies nonconvex sequences in a reference package")), ToolInput(tag="in_ref_tree", input_type=String(), position=11, doc=InputDocumentation(doc="writes a taxonomically annotated reference tree and an induced taxonomic tree")), ToolInput(tag="in_re_root", input_type=String(), position=12, doc=InputDocumentation(doc="reroots a given reference package in place"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rppr_Rppr_V0_1_0().translate("wdl", allow_empty_container=True)

