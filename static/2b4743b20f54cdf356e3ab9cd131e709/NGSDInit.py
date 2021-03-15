from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Ngsdinit_V0_1_0 = CommandToolBuilder(tool="NGSDInit", base_command=["NGSDInit"], inputs=[ToolInput(tag="in_add", input_type=File(optional=True), prefix="-add", doc=InputDocumentation(doc="Additional SQL script to execute after database initialization.\nDefault value: ''")), ToolInput(tag="in_force", input_type=String(optional=True), prefix="-force", doc=InputDocumentation(doc="Database password needed to re-initialize the production database.\nDefault value: ''")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container="quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngsdinit_V0_1_0().translate("wdl")

