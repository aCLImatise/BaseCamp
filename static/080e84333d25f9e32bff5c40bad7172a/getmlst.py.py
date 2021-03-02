from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Getmlst_Py_V0_1_0 = CommandToolBuilder(tool="getmlst.py", base_command=["getmlst.py"], inputs=[ToolInput(tag="in_repository_url", input_type=String(optional=True), prefix="--repository_url", doc=InputDocumentation(doc="URL for MLST repository XML index")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="The name of the species that you want to download\n(e.g. 'Escherichia coli')")), ToolInput(tag="in_force_scheme_name", input_type=Boolean(optional=True), prefix="--force_scheme_name", doc=InputDocumentation(doc="Flage to force downloading of specific scheme name\n(e.g. 'Clostridium difficile')\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getmlst_Py_V0_1_0().translate("wdl", allow_empty_container=True)

