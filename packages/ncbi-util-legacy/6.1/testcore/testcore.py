from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Testcore_V0_1_0 = CommandToolBuilder(tool="testcore", base_command=["testcore"], inputs=[ToolInput(tag="in_test_boolean_default", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="test Boolean [T/F]\ndefault = T")), ToolInput(tag="in_test_integer_range", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="test Integer [Integer]  Optional\ndefault = 42\nrange from 41 to 43")), ToolInput(tag="in_test_float_default", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="test Float [Real]\ndefault = 3.14159")), ToolInput(tag="in_test_string_optional", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="test String [String]  Optional")), ToolInput(tag="in_test_filein_optional", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="test File-in [File In]  Optional")), ToolInput(tag="in_test_fileout_optional", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="test File-out [File Out]  Optional")), ToolInput(tag="in_test_datain_optionaldata", input_type=Boolean(optional=True), prefix="-y", doc=InputDocumentation(doc="test Data-in [Data In]  Optional\nData Type = Fake-type")), ToolInput(tag="in_test_dataout_optionaldata", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="test Data-out [Data Out]  Optional\nData Type = Fake-out\n"))], outputs=[ToolOutput(tag="out_test_fileout_optional", output_type=File(optional=True), selector=InputSelector(input_to_select="in_test_fileout_optional", type_hint=File()), doc=OutputDocumentation(doc="test File-out [File Out]  Optional"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Testcore_V0_1_0().translate("wdl", allow_empty_container=True)

