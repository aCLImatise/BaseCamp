from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float

Haltreeniconservation_Py_V0_1_0 = CommandToolBuilder(tool="halTreeNIConservation.py", base_command=["halTreeNIConservation.py"], inputs=[ToolInput(tag="in_background_bed_name", input_type=String(optional=True), prefix="--backgroundBedName", doc=InputDocumentation(doc="Name function for background bed files where genome\nname is specified as %s. Computed using\nhalTreeNIBackground (default: %%s_bg.bed)")), ToolInput(tag="in_mutations_bed_name", input_type=String(optional=True), prefix="--mutationsBedName", doc=InputDocumentation(doc="Name function for background bed files where genome\nname is specified as %s. Computed using\nhalTreeMutations (default: %%s.bed)")), ToolInput(tag="in_conserved_bed_name", input_type=String(optional=True), prefix="--conservedBedName", doc=InputDocumentation(doc="Name function for output bed files where genome name\nis specifed as %s (default: %%s_cons.bed)")), ToolInput(tag="in_root", input_type=String(optional=True), prefix="--root", doc=InputDocumentation(doc="root (default: None)")), ToolInput(tag="in_events", input_type=String(optional=True), prefix="--events", doc=InputDocumentation(doc="event tags. (default: I GI D DB GD GDB)")), ToolInput(tag="in_pval", input_type=Int(optional=True), prefix="--pval", doc=InputDocumentation(doc="max pval of conserved segment (default: 0.05)")), ToolInput(tag="in_cut_off", input_type=Float(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="cut <cutoff>*mu^-1 off each side of interval. For\nupper bounds use 0.5 and lower bounds 2.0 (default:\n0.5)\n")), ToolInput(tag="in_hal", input_type=String(), position=0, doc=InputDocumentation(doc="input hal")), ToolInput(tag="in_workdir", input_type=String(), position=1, doc=InputDocumentation(doc="working dir for all bed files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haltreeniconservation_Py_V0_1_0().translate("wdl", allow_empty_container=True)

