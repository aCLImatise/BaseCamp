from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Mashtree_Bootstrap_Pl_V0_1_0 = CommandToolBuilder(tool="mashtree_bootstrap.pl", base_command=["mashtree_bootstrap.pl"], inputs=[ToolInput(tag="in_out_matrix", input_type=File(optional=True), prefix="--outmatrix", doc=InputDocumentation(doc="''   Output file for distance matrix")), ToolInput(tag="in_reps", input_type=Boolean(optional=True), prefix="--reps", doc=InputDocumentation(doc="0    How many bootstrap repetitions to run;\nIf zero, no bootstrapping.")), ToolInput(tag="in_num_cpus", input_type=Boolean(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="1    This will be passed to mashtree and will\nbe used to multithread reps.")), ToolInput(tag="in_trunc_length", input_type=Boolean(optional=True), prefix="--truncLength", doc=InputDocumentation(doc="250  How many characters to keep in a filename")), ToolInput(tag="in_sort_order", input_type=Boolean(optional=True), prefix="--sort-order", doc=InputDocumentation(doc="ABC  For neighbor-joining, the sort order can\nmake a difference. Options include:\nABC (alphabetical), random, input-order")), ToolInput(tag="in_min_depth", input_type=Boolean(optional=True), prefix="--mindepth", doc=InputDocumentation(doc="5    If mindepth is zero, then it will be\nchosen in a smart but slower method,\nto discard lower-abundance kmers.")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="--seed", doc=InputDocumentation(doc="42   Seed for mash sketch")), ToolInput(tag="in_save_sketches", input_type=Boolean(optional=True), prefix="--save-sketches", doc=InputDocumentation(doc="''   If a directory is supplied, then sketches\nwill be saved in it.\nIf no directory is supplied, then sketches\nwill be saved alongside source files.\n"))], outputs=[ToolOutput(tag="out_out_matrix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_matrix", type_hint=File()), doc=OutputDocumentation(doc="''   Output file for distance matrix"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mashtree_Bootstrap_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

