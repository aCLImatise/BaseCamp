from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Test_Sra_2_V0_1_0 = CommandToolBuilder(tool="test_sra.2", base_command=["test-sra.2"], inputs=[ToolInput(tag="in_xml_text_generate", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="< xml | text > - whether to generate well-formed XML")), ToolInput(tag="in_check_objects_recursively", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="- check objects recursively")), ToolInput(tag="in__call_vdbmanagerpathtype", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="- do not call VDBManagerPathType")), ToolInput(tag="in_disable_caching_default", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="- do not disable caching (default: from configuration)")), ToolInput(tag="in_bytes", input_type=File(optional=True), prefix="--bytes", doc=InputDocumentation(doc="- print the first K bytes of resolved remote HTTP file)\n(default: 256)")), ToolInput(tag="in_library", input_type=File(optional=True), prefix="--library", doc=InputDocumentation(doc="- print version of dynamic library")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase the verbosity of the program\nstatus messages. Use multiple times for more\nverbosity. Negates quiet.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Turn off all status messages for the\nprogram. Negated by verbose.")), ToolInput(tag="in_option_file", input_type=File(optional=True), prefix="--option-file", doc=InputDocumentation(doc="Read more options and parameters from the\nfile.\n")), ToolInput(tag="in_l", input_type=File(optional=True), prefix="-L", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="")), ToolInput(tag="in_quit_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-L|--log-level <level>           Logging level as number or enum string. One "))], outputs=[], container="quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Sra_2_V0_1_0().translate("wdl")

