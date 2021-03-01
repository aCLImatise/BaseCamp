from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cachedas_V0_1_0 = CommandToolBuilder(tool="cachedas", base_command=["cachedas"], inputs=[ToolInput(tag="in_sequence_sources_only", input_type=Boolean(optional=True), prefix="-sequencesourcesonly", doc=InputDocumentation(doc="[N] Display DAS sequence sources only")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [stdout] Output file name")), ToolInput(tag="in_host", input_type=Boolean(optional=True), prefix="-host", doc=InputDocumentation(doc="string     [www.dasregistry.org] DAS registry/server\nhost location (Any string)")), ToolInput(tag="in_path", input_type=Boolean(optional=True), prefix="-path", doc=InputDocumentation(doc="string     [/das] DAS registry/server path on\nregistry/server host (Any string)")), ToolInput(tag="in_port", input_type=Boolean(optional=True), prefix="-port", doc=InputDocumentation(doc="integer    [80] DAS registry/server port on\nregistry/server host (Any integer value)")), ToolInput(tag="in_servername", input_type=Boolean(optional=True), prefix="-servername", doc=InputDocumentation(doc="string     [das] Name of a DAS server defined in EMBOSS\nresource files (Any string)")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="outfile    [stdout] Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cachedas_V0_1_0().translate("wdl", allow_empty_container=True)

