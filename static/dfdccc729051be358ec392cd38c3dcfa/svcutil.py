from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Svcutil_V0_1_0 = CommandToolBuilder(tool="svcutil", base_command=["svcutil"], inputs=[ToolInput(tag="in_async", input_type=Boolean(optional=True), prefix="--async", doc=InputDocumentation(doc="Generate async methods.")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file names to generate.")), ToolInput(tag="in_internal", input_type=Boolean(optional=True), prefix="--internal", doc=InputDocumentation(doc="Generate types as internal.")), ToolInput(tag="in_language", input_type=String(optional=True), prefix="--language", doc=InputDocumentation(doc="Specify target code LANGUAGE. Default is 'csharp'.")), ToolInput(tag="in_mono_touch", input_type=Boolean(optional=True), prefix="--monotouch", doc=InputDocumentation(doc="Generate MonoTouch client. (This option may vanish)")), ToolInput(tag="in_moonlight", input_type=Boolean(optional=True), prefix="--moonlight", doc=InputDocumentation(doc="Generate moonlight client. (This option may vanish)")), ToolInput(tag="in_namespace", input_type=String(optional=True), prefix="--namespace", doc=InputDocumentation(doc="Code namespace name to generate.")), ToolInput(tag="in_no_config", input_type=Boolean(optional=True), prefix="--noConfig", doc=InputDocumentation(doc="Do not generate config file.")), ToolInput(tag="in_nologo", input_type=Boolean(optional=True), prefix="--noLogo", doc=InputDocumentation(doc="Do not show tool logo.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output code filename.")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Referenced assembly files.")), ToolInput(tag="in_target_client_version", input_type=Boolean(optional=True), prefix="--targetClientVersion", doc=InputDocumentation(doc="[=VALUE]\nIndicate target client version. Valid values:\nVersion35")), ToolInput(tag="in_typed_message", input_type=Boolean(optional=True), prefix="--typedMessage", doc=InputDocumentation(doc="Generate typed messages."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output code filename."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svcutil_V0_1_0().translate("wdl", allow_empty_container=True)

