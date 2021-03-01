from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Overlapalign_V0_1_0 = CommandToolBuilder(tool="overlapAlign", base_command=["overlapAlign"], inputs=[ToolInput(tag="in_mandatory_path_seqstore", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="Mandatory, path to seqStore sequences.")), ToolInput(tag="in_mandatorym_path_ovlstore", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="Mandatorym path to ovlStore overlaps.")), ToolInput(tag="in_process_reads_bgnid", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="[-endID]  Process reads bgnID to endID, inclusive.")), ToolInput(tag="in_erate", input_type=String(optional=True), prefix="-erate", doc=InputDocumentation(doc="Overlaps are computed at 'e' fraction error; must be larger than the original erate")), ToolInput(tag="in_partial", input_type=Boolean(optional=True), prefix="-partial", doc=InputDocumentation(doc="Overlaps are 'overlapInCore -S' partial overlaps")), ToolInput(tag="in_memory", input_type=String(optional=True), prefix="-memory", doc=InputDocumentation(doc="Use up to 'm' GB of memory")), ToolInput(tag="in_threads", input_type=String(optional=True), prefix="-threads", doc=InputDocumentation(doc="Use up to 'n' cores")), ToolInput(tag="in_vt", input_type=Boolean(optional=True), prefix="-Vt", doc=InputDocumentation(doc="Increase debug verbosity. -Vt increases only trimming; -Va increases only alignment."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overlapalign_V0_1_0().translate("wdl", allow_empty_container=True)

