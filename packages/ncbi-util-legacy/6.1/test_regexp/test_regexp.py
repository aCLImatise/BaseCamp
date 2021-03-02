from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Test_Regexp_V0_1_0 = CommandToolBuilder(tool="test_regexp", base_command=["test_regexp"], inputs=[ToolInput(tag="in_debug_show_compiled", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="debug: show compiled code; implies -i")), ToolInput(tag="in_show_information_compiled", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="show information about compiled pattern")), ToolInput(tag="in_set_size_n", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="set size of offsets vector to <n>")), ToolInput(tag="in_use_posix_interface", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="use POSIX interface")), ToolInput(tag="in_output_store_information", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="output store information")), ToolInput(tag="in_time_compilation_execution", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="time compilation and execution")), ToolInput(tag="in_pcre_test", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Regexp_V0_1_0().translate("wdl", allow_empty_container=True)

