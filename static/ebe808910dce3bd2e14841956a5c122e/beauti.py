from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Beauti_V0_1_0 = CommandToolBuilder(tool="beauti", base_command=["beauti"], inputs=[ToolInput(tag="in_advanced", input_type=String(optional=True), prefix="-advanced", doc=InputDocumentation(doc="advanced & developer features")), ToolInput(tag="in_version", input_type=String(optional=True), prefix="-version", doc=InputDocumentation(doc="the version and credits and stop")), ToolInput(tag="in_alexei_atcs_dot_auckland_do_tac_dot_nz", input_type=String(), position=0, doc=InputDocumentation(doc="Institute of Evolutionary Biology")), ToolInput(tag="in_a_dotrambautateddotacdotuk", input_type=String(), position=0, doc=InputDocumentation(doc="David Geffen School of Medicine")), ToolInput(tag="in_m_suchard_at_ucla_dot_edu", input_type=String(), position=0, doc=InputDocumentation(doc="Downloads, Help & Resources:\nhttp://beast.community"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Beauti_V0_1_0().translate("wdl", allow_empty_container=True)

