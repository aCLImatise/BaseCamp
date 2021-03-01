from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Mono_Xmltool_V0_1_0 = CommandToolBuilder(tool="mono_xmltool", base_command=["mono-xmltool"], inputs=[ToolInput(tag="in_validate", input_type=Boolean(optional=True), prefix="--validate", doc=InputDocumentation(doc="[*.rng | *.rnc | *.nvdl | *.xsd] [instances]")), ToolInput(tag="in_validate_rng", input_type=String(optional=True), prefix="--validate-rng", doc=InputDocumentation(doc="[instances]")), ToolInput(tag="in_validate_rnc", input_type=File(optional=True), prefix="--validate-rnc", doc=InputDocumentation(doc="[instances]")), ToolInput(tag="in_validate_nv_dl", input_type=String(optional=True), prefix="--validate-nvdl", doc=InputDocumentation(doc="[instances]")), ToolInput(tag="in_validate_xsd", input_type=String(optional=True), prefix="--validate-xsd", doc=InputDocumentation(doc="[instances]")), ToolInput(tag="in_validate_xsd_two", input_type=Int(optional=True), prefix="--validate-xsd2", doc=InputDocumentation(doc="[instances] (in .NET 2.0 validator)")), ToolInput(tag="in_validate_dtd", input_type=String(optional=True), prefix="--validate-dtd", doc=InputDocumentation(doc="instance-xml [output-xml]")), ToolInput(tag="in_pretty_print", input_type=Boolean(optional=True), prefix="--prettyprint", doc=InputDocumentation(doc="[source] [result]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mono_Xmltool_V0_1_0().translate("wdl", allow_empty_container=True)

