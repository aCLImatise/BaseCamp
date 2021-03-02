from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

_Xml2_Config_V0_1_0 = CommandToolBuilder(tool="_xml2_config", base_command=["_xml2-config"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="change libxml prefix [default /usr/local]")), ToolInput(tag="in_exec_prefix", input_type=String(optional=True), prefix="--exec-prefix", doc=InputDocumentation(doc="change libxml exec prefix [default /usr/local]")), ToolInput(tag="in_libs", input_type=Boolean(optional=True), prefix="--libs", doc=InputDocumentation(doc="print library linking information\nadd --dynamic to print only shared libraries")), ToolInput(tag="in_cflags", input_type=Boolean(optional=True), prefix="--cflags", doc=InputDocumentation(doc="print pre-processor and compiler flags")), ToolInput(tag="in_modules", input_type=Boolean(optional=True), prefix="--modules", doc=InputDocumentation(doc="module support enabled")), ToolInput(tag="in_xml_two_config", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Xml2_Config_V0_1_0().translate("wdl", allow_empty_container=True)

