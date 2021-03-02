from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Paf2Gfa_V0_1_0 = CommandToolBuilder(tool="paf2gfa", base_command=["paf2gfa"], inputs=[ToolInput(tag="in_directions_arc_present", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="both directions of an arc are present in input")), ToolInput(tag="in_keep_unidirectional_edges", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="keep unidirectional edges (effective with -b)")), ToolInput(tag="in_cut_filter_initial", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="cut and filter initial hits")), ToolInput(tag="in_max_overhang_length", input_type=Int(optional=True), prefix="-h", doc=InputDocumentation(doc="max overhang length [100]")), ToolInput(tag="in_min_overlap_length", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="min overlap length [500]")), ToolInput(tag="in_apply_graph_cleaning", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="apply graph cleaning (up to 3)")), ToolInput(tag="in_generate_unitigs", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="generate unitigs")), ToolInput(tag="in_input_reads", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input reads []")), ToolInput(tag="in_in_dot_paf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gfatools:0.4--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paf2Gfa_V0_1_0().translate("wdl")

