from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Variantfilterannotations_V0_1_0 = CommandToolBuilder(tool="VariantFilterAnnotations", base_command=["VariantFilterAnnotations"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input variant list in GSvar format.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output variant list in GSvar format.")), ToolInput(tag="in_filters", input_type=File(optional=True), prefix="-filters", doc=InputDocumentation(doc="Filter definition file.")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Variantfilterannotations_V0_1_0().translate("wdl", allow_empty_container=True)

