from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Vcfsort_V0_1_0 = CommandToolBuilder(tool="VcfSort", base_command=["VcfSort"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input variant list.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output variant list.")), ToolInput(tag="in_qual", input_type=Boolean(optional=True), prefix="-qual", doc=InputDocumentation(doc="Also sort according to variant quality. Ignored if 'fai' file is given.\nDefault value: 'false'")), ToolInput(tag="in_fai", input_type=File(optional=True), prefix="-fai", doc=InputDocumentation(doc="FAI file defining different chromosome order.\nDefault value: ''")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfsort_V0_1_0().translate("wdl", allow_empty_container=True)

