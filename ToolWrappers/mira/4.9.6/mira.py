from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mira_V0_1_0 = CommandToolBuilder(tool="mira", base_command=["mira"], inputs=[ToolInput(tag="in_cwd", input_type=Boolean(optional=True), prefix="--cwd", doc=InputDocumentation(doc="=           directory       Change working directory")), ToolInput(tag="in_m_check", input_type=Boolean(optional=True), prefix="--mcheck", doc=InputDocumentation(doc="Only check the manifest file, then exit.")), ToolInput(tag="in_md_check", input_type=Boolean(optional=True), prefix="--mdcheck", doc=InputDocumentation(doc="Like -m, but also check existence of\ndata files.")), ToolInput(tag="in_resume", input_type=Boolean(optional=True), prefix="--resume", doc=InputDocumentation(doc="Resume an interrupted assembly")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="=       integer         Force number of threads (overrides\nequivalent -GE:not manifest entry)")), ToolInput(tag="in_mira_talk_at_freelists_dot_org", input_type=String(), position=0, doc=InputDocumentation(doc="To report bugs or ask for features, please use the SourceForge ticketing"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mira_V0_1_0().translate("wdl", allow_empty_container=True)

