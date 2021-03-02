from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Makeset_V0_1_0 = CommandToolBuilder(tool="makeset", base_command=["makeset"], inputs=[ToolInput(tag="in_input_file_names", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input File Names [File In]\ndefault = stdin")), ToolInput(tag="in_input_data_binary", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Input data is binary [T/F]  Optional\ndefault = F")), ToolInput(tag="in_output_data_optionaldefault", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Output data as binary [T/F]  Optional\ndefault = T")), ToolInput(tag="in_output_bioseqset_default", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Output Bioseq-set [Data Out]\ndefault = stdout\nData Type = Bioseq-set")), ToolInput(tag="in_bioseqsetclass_default_", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Bioseq-set.class [Integer]\ndefault = 255")), ToolInput(tag="in_bioseqsetrelease__optional", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Bioseq-set.release [String]  Optional"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makeset_V0_1_0().translate("wdl", allow_empty_container=True)

