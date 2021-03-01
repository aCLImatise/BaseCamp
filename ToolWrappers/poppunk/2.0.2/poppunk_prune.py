from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Poppunk_Prune_V0_1_0 = CommandToolBuilder(tool="poppunk_prune", base_command=["poppunk_prune"], inputs=[ToolInput(tag="in_remove", input_type=File(optional=True), prefix="--remove", doc=InputDocumentation(doc="File listing sequences to remove (required)")), ToolInput(tag="in_distances", input_type=String(optional=True), prefix="--distances", doc=InputDocumentation(doc="Prefix of input pickle of pre-calculated distances\n(required)")), ToolInput(tag="in_ref_db", input_type=String(optional=True), prefix="--ref-db", doc=InputDocumentation(doc="Location of reference db, if resketching")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Prefix for output files (required)")), ToolInput(tag="in_re_sketch", input_type=Boolean(optional=True), prefix="--resketch", doc=InputDocumentation(doc="Resketch the non-excluded sequences (mash-only)\n[default = False]")), ToolInput(tag="in_use_mash", input_type=Boolean(optional=True), prefix="--use-mash", doc=InputDocumentation(doc="Use the old mash sketch backend [default = False]")), ToolInput(tag="in_mash", input_type=String(optional=True), prefix="--mash", doc=InputDocumentation(doc="Location of mash executable")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use [default = 1]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Prune_V0_1_0().translate("wdl", allow_empty_container=True)

