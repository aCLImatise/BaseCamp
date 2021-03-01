from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gnos_Pull_Pl_V0_1_0 = CommandToolBuilder(tool="gnos_pull.pl", base_command=["gnos_pull.pl"], inputs=[ToolInput(tag="in_analysis", input_type=Boolean(optional=True), prefix="--analysis", doc=InputDocumentation(doc="(-a)  ALIGNMENTS or CALLS")), ToolInput(tag="in_outdir", input_type=Boolean(optional=True), prefix="--outdir", doc=InputDocumentation(doc="(-o)  Where to save jsonl and resulting GNOS downloads")), ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="--config", doc=InputDocumentation(doc="(-c)  Mapping of GNOS repos to permissions keys")), ToolInput(tag="in_symlinks", input_type=Boolean(optional=True), prefix="--symlinks", doc=InputDocumentation(doc="(-s)  Rebuild symlinks only.")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="(-t)  Number of parallel GNOS retrievals.")), ToolInput(tag="in_url", input_type=Boolean(optional=True), prefix="--url", doc=InputDocumentation(doc="(-u)  The base URL to retrieve jsonl file from\n[http://pancancer.info/gnos_metadata/latest/]")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="(-i)  Just prints how many donor's will be included in pull and some stats.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="(-d)  prints extra debug information")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="(-m)  More verbose usage info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gnos_Pull_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

